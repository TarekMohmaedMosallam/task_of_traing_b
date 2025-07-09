// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/view/Styles/TextStyle.dart'
    show Textstyles;

// ignore: must_be_immutable
class BuildPage extends StatelessWidget {
  String title;
  String description;
  String imagePath;

  BuildPage({
    super.key,

    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          Center(
            child: Container(
              width: 250,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(55),
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: Textstyles.textStyle_3,
            textAlign: TextAlign.center,
          ),

          Text(
            description,
            style: Textstyles.textStyle_4,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
