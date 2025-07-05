import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/view/Screen/LoginPage.dart';

import 'package:task_of_traing_b/Task%20Gruop%20b/view/Screen/Splash_Screen.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/view/Widget_Branch_Works/LoginPageBranch.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/view_models/cubit/a_pi_cubit_cubit.dart';

void main() {
  //  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  //  FlutterNativeSplash.remove();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => APiCubitCubit(),
      child: MaterialApp(debugShowCheckedModeBanner: false, home: Loginpage()),
    );
  }
}

// "27.0.12077973"

//flutter.ndkVersion
