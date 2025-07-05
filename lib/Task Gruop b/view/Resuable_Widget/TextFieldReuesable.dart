import 'package:flutter/material.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/view/Styles/TextStyle.dart';

class Textfieldreuesable extends StatelessWidget {
  const Textfieldreuesable({
    super.key,
    required this.hitext,
    required this.obscureText,
    this.controller,
    required this.label,
    required this.icon,
    this.validator, required this.textFieldType,
  });
  final String hitext;
  final bool obscureText;
  final TextEditingController? controller;
  final String label;
  final IconData? icon;
  final String? Function(String?)? validator;
  final String textFieldType;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 70.0),
          child: Text(textFieldType, style: Textstyles.textStyle_4_2),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextFormField(
            validator: validator,
            textAlign: TextAlign.start,
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
              prefixIcon: Icon(
                icon,
                color: const Color.fromARGB(255, 7, 47, 223),
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: hitext,
              contentPadding: EdgeInsets.symmetric(
                vertical: .0,
                horizontal: 12.0,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(width: 1.0),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(width: 1.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(width: 1.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
