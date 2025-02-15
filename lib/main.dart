import 'package:fitforlife_admin/explore_screen.dart';
import 'package:fitforlife_admin/fitness_detail_screen.dart';
import 'package:fitforlife_admin/goal_screen.dart';
import 'package:fitforlife_admin/home_screen.dart';
import 'package:fitforlife_admin/login_screen.dart';
import 'package:fitforlife_admin/mealplan_screen.dart';
import 'package:fitforlife_admin/recipe_screen.dart';
import 'package:fitforlife_admin/workout.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://supabase.com/dashboard/project/ixzhhpltvkunkbtnpsuo',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Iml4emhocGx0dmt1bmtidG5wc3VvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzI4NTcxNjQsImV4cCI6MjA0ODQzMzE2NH0.tXFyg6IkpG1ivD_4Zaaxln7zr2cYWqlntrBsDJjvJA8',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
