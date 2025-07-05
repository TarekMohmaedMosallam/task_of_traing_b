import 'package:flutter/material.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/model/Values/OnBroadScreen_Values.dart';

class Resuablebutton2 extends StatelessWidget {
  final VoidCallback onPressed;
  final String socalIcon;
  final String text;
  const Resuablebutton2({
    super.key,
    required this.onPressed,
    required this.socalIcon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width: 270,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ),
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(socalIcon),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                "Sign in with Facebook",
                style: TextStyle(fontSize: 12, color: Colors.black54),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
