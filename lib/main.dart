import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/view/Screen/LoginPage.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/view/Screen/Splash_Screen.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/view/Widget_Branch_Works/LoginPageBranch.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/view_models/cubit/login_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}


