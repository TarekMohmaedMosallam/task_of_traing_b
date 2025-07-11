import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/model/Values/OnBroadScreen_Values.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/view/Resuable_Widget/ResuableButton.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/view/Resuable_Widget/ResuableButton2.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/view/Resuable_Widget/TextFieldReuesable.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/view/Resuable_Widget/TextPasswordField.dart';

import 'package:task_of_traing_b/Task%20Gruop%20b/view/Styles/TextStyle.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/view_models/Bloc%20Pattern/Login%20Cubit/login_cubit.dart';

class Loginpagebranch extends StatefulWidget {
  const Loginpagebranch({super.key});

  @override
  State<Loginpagebranch> createState() => _LoginpagebranchState();
}

class _LoginpagebranchState extends State<Loginpagebranch> {
  final TextEditingController emailController = TextEditingController();
  final loginKey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {
              if (state is LoginSuccess) {
                print("Success");
              }
              if (state is LoginError) {
                print("Error");
              }
            },
            builder: (context, state) {
              return Form(
                key: loginKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 35),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        "Login Account",
                        style: Textstyles.textStyle_3,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Text(
                        "Please Login With Registered account",
                        style: Textstyles.textStyle_4,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Textfieldreuesable(
                      controller: emailController,
                      textFieldType: "Email or Phone Number",
                      hitext: "Email or Phone Number",
                      obscureText: false,
                      label: "Email or Phone Number",
                      icon: Icons.email,
                    ),
                    const SizedBox(height: 35),
                    TextfieldPasswordreuesable(
                      controller: passwordController,
                      textFieldType: "Password",
                      hitext: "Password",
                      obscureText: true,
                      label: "Password",
                      icon: Icons.lock,
                    ),
                    const SizedBox(height: 12),
                    InkWell(
                      onTap: () {
                        // Handle forgot password
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 180.0),
                        child: Text(
                          " Forgot Password?",
                          style: Textstyles.textStyle_5.copyWith(),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Center(
                      child: Resuablebutton(
                        onPressed: () {
                          setState(() {
                            if (loginKey.currentState!.validate()) {
                              context.read<LoginCubit>().loginMethods(
                                username: emailController.text,
                                password: passwordController.text,
                              );
                            }
                          });
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: Text(
                        "Or Other Methods",
                        style: Textstyles.textStyle_4.copyWith(fontSize: 12),
                      ),
                    ),
                    const SizedBox(height: 1),
                    Resuablebutton2(
                      onPressed: () {},
                      socalIcon: facebookIcon,
                      text: "Sign in with Facebook",
                    ),
                    SizedBox(height: 15),
                    Resuablebutton2(
                      onPressed: () {},
                      socalIcon: googleIcon,
                      text: "Sign in with Google",
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
