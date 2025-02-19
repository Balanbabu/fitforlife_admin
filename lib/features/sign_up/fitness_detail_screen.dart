import 'package:fitforlife_admin/features/home_screen.dart';
import 'package:fitforlife_admin/util/value_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common_widgets.dart/custom_alert_dialog.dart';
import 'sign_up_bloc/sign_up_bloc.dart';

class FitnessDetailScreen extends StatefulWidget {
  final String name;
  const FitnessDetailScreen({super.key, required this.name});

  @override
  State<FitnessDetailScreen> createState() => _FitnessDetailScreenState();
}

class _FitnessDetailScreenState extends State<FitnessDetailScreen> {
  final TextEditingController _ageController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String gender = 'Male';
  String Activity_level = 'Little or no exercise';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'MATRIX UNITS',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20),
          ),
        ),
        body: BlocProvider(
          create: (context) => SignUpBloc(),
          child: BlocConsumer<SignUpBloc, SignUpState>(
            listener: (context, state) {
              if (state is SignUpFailureState) {
                showDialog(
                  context: context,
                  builder: (context) => CustomAlertDialog(
                    title: 'Failure',
                    description: state.message,
                    primaryButton: 'Try Again',
                    onPrimaryPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                );
              } else if (state is SignUpSuccessState) {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                  (route) => false,
                );
              }
            },
            builder: (context, state) {
              return Form(
                key: _formKey,
                child: ListView(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  children: [
                    Row(
                      children: [
                        Text(
                          'Age',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        SizedBox(
                          width: 200,
                          child: TextFormField(
                            controller: _ageController,
                            validator: numericValidator,
                            cursorColor: Colors.green,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                    borderRadius: BorderRadius.circular(20)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'Gender',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: ListTile(
                            title: const Text(
                              'male',
                              style: TextStyle(color: Colors.black),
                            ),
                            leading: Radio(
                                activeColor: Colors.green,
                                value: "Male",
                                groupValue: gender,
                                onChanged: (value) {
                                  gender = "Male";
                                  setState(() {});
                                }),
                          ),
                        ),
                        Expanded(
                          child: ListTile(
                            title: const Text(
                              'Female',
                              style: TextStyle(color: Colors.black),
                            ),
                            leading: Radio(
                                activeColor: Colors.green,
                                value: "Female",
                                groupValue: gender,
                                onChanged: (value) {
                                  gender = "Female";
                                  setState(() {});
                                }),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'height',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 18.10,
                        ),
                        SizedBox(
                          width: 200,
                          child: TextFormField(
                            controller: _heightController,
                            validator: numericValidator,
                            cursorColor: Colors.green,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                    borderRadius: BorderRadius.circular(20)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          'weight',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 18.10,
                        ),
                        SizedBox(
                          width: 200,
                          child: TextFormField(
                            controller: _weightController,
                            validator: numericValidator,
                            cursorColor: Colors.green,
                            decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.green),
                                    borderRadius: BorderRadius.circular(20)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'ACTIVITY LEVEL',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      title: const Text(
                        'Little or no exercise',
                        style: TextStyle(color: Colors.black),
                      ),
                      leading: Radio(
                          activeColor: Colors.green,
                          value: "Little or no exercise",
                          groupValue: Activity_level,
                          onChanged: (value) {
                            Activity_level = "Little or no exercise";
                            setState(() {});
                          }),
                    ),
                    ListTile(
                      title: const Text(
                        'Exercise 1-3 times/week',
                        style: TextStyle(color: Colors.black),
                      ),
                      leading: Radio(
                          activeColor: Colors.green,
                          value: "Exercise 1-3 times/week",
                          groupValue: Activity_level,
                          onChanged: (value) {
                            Activity_level = "Exercise 1-3 times/week";
                            setState(() {});
                          }),
                    ),
                    ListTile(
                      title: const Text(
                        'Exercise 4-5 times/week',
                        style: TextStyle(color: Colors.black),
                      ),
                      leading: Radio(
                          activeColor: Colors.green,
                          value: "Exercise 4-5 times/week",
                          groupValue: Activity_level,
                          onChanged: (value) {
                            Activity_level = "Exercise 4-5 times/week";
                            setState(() {});
                          }),
                    ),
                    ListTile(
                      title: const Text(
                        'Daily exercise or intense exercise 3-4times / week',
                        style: TextStyle(color: Colors.black),
                      ),
                      leading: Radio(
                          activeColor: Colors.green,
                          value:
                              "Daily exercise or intense exercise 3-4 times / week",
                          groupValue: Activity_level,
                          onChanged: (value) {
                            Activity_level =
                                "Daily exercise or intense exercise 3-4 times / week";

                            setState(() {});
                          }),
                    ),
                    ListTile(
                      title: const Text(
                        'intense exercise 6-7 times/week',
                        style: TextStyle(color: Colors.black),
                      ),
                      leading: Radio(
                          activeColor: Colors.green,
                          value: "intense exercise 6-7 times/week",
                          groupValue: Activity_level,
                          onChanged: (value) {
                            Activity_level = "intense exercise 6-7 times/week";

                            setState(() {});
                          }),
                    ),
                    ListTile(
                      title: const Text(
                        'Very intense exercise daily,or physical job',
                        style: TextStyle(color: Colors.black),
                      ),
                      leading: Radio(
                          activeColor: Colors.green,
                          value: "Very intense exercise daily,or physical job",
                          groupValue: Activity_level,
                          onChanged: (value) {
                            Activity_level =
                                "Very intense exercise daily,or physical job";

                            setState(() {});
                          }),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Material(
                      elevation: 10,
                      color: Colors.lightGreen,
                      borderRadius: BorderRadius.circular(80),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(80),
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            Map<String, dynamic> details = {
                              'name': widget.name,
                              'gender': gender,
                              'height': _heightController.text.trim(),
                              'weight': _weightController.text.trim(),
                              'age': _ageController.text.trim(),
                            };
                            BlocProvider.of<SignUpBloc>(context).add(
                              InsertUserDataEvent(
                                userDetails: details,
                              ),
                            );
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Text(
                                'NEXT',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ));
  }
}
