import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/view/Resuable_Widget/BuildPage.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/view/Screen/LoginPage.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/view/Styles/ButtonStyle.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/view/Styles/TextStyle.dart';

class OnboardingScreenBranch extends StatefulWidget {
  const OnboardingScreenBranch({super.key});

  @override
  State<OnboardingScreenBranch> createState() => _OnboardingScreenBranchState();
}

class _OnboardingScreenBranchState extends State<OnboardingScreenBranch> {
  final PageController controller = PageController();
  int currentIndex = 0; // ✅ Start from 0

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index; // ✅ Track current page
              });
            },
            children: [
              BuildPage(
                title: 'Various Collection  Of\n The Latest Products',
                description:
                    '    Urna amet, suspendisse ullamcorper ac elit diam facilisis cursus vestibulum.',
                imagePath: "asset/OnBroadScreen/s1.jpg",
              ),
              BuildPage(
                title: 'Complete Collection\n of size and Colors',
                description:
                    '    Urna amet, suspendisse ullamcorper ac elit diam facilisis cursus vestibulum.',
                imagePath: "asset/OnBroadScreen/s2.jpg",
              ),
              BuildPage(
                title: 'Find Most Suitable\n Outfit For You',
                description:
                    '      Urna amet, suspendisse ullamcorper ac elit\n diam facilisis cursus vestibulum.',
                imagePath: "asset/OnBroadScreen/s3.jpg",
              ),
            ],
          ),

          // ✅ Page indicator
          Positioned(
            top: 505,
            left: 135,
            child: SmoothPageIndicator(
              controller: controller,
              onDotClicked: (index) {
                controller.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              },
              count: 3, // ✅ Fixed value
              effect: const WormEffect(dotHeight: 8.0, dotWidth: 8.0),
            ),
          ),

          Positioned(
            top: 535,
            left: 60,
            child: ElevatedButton(
              onPressed: () {},
              style: Buttonstyle.ButtonStyle_1,
              child: const Text(
                'Create Account',
                style: Textstyles.textStyle_1,
              ),
            ),
          ),
          Positioned(
            top: 600,
            left: 45,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const Loginpage()),
                );
              },
              child: Text(
                'Already have an Account',
                style: Textstyles.textStyle_2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
