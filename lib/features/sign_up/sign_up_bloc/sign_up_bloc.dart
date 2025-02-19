import 'package:bloc/bloc.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../values/strings.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc() : super(SignUpInitialState()) {
    on<SignUpEvent>((event, emit) async {
      try {
        emit(SignUpLoadingState());
        SupabaseClient supabaseClient = Supabase.instance.client;
        if (event is SignUpUserEvent) {
          await supabaseClient.auth.signUp(
            email: event.email,
            password: event.password,
          );

          emit(SignUpSuccessState());
        } else if (event is InsertUserDataEvent) {
          event.userDetails['user_id'] = supabaseClient.auth.currentUser!.id;

          await supabaseClient.from('user_details').insert(event.userDetails);

          emit(SignUpSuccessState());
        }
      } catch (e, s) {
        Logger().e('$e\n$s');
        if (e is AuthException) {
          emit(SignUpFailureState(message: e.message));
        } else {
          emit(SignUpFailureState());
        }
      }
    });
  }
}
