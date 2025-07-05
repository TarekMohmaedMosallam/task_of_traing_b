import 'package:flutter/material.dart';
import 'package:task_of_traing_b/Task%20Gruop%20b/view/Styles/TextStyle.dart';

class TextfieldPasswordreuesable extends StatefulWidget {
  const TextfieldPasswordreuesable({
    super.key,
    required this.hitext,
    required this.obscureText,
    this.controller,
    required this.label,
    required this.icon,
    this.validator,
    required this.textFieldType,
  });
  final String hitext;
  final bool obscureText;
  final TextEditingController? controller;
  final String label;
  final IconData? icon;
  final String? Function(String?)? validator;
  final String textFieldType;

  @override
  State<TextfieldPasswordreuesable> createState() =>
      _TextfieldPasswordreuesableState();
}

class _TextfieldPasswordreuesableState
    extends State<TextfieldPasswordreuesable> {
  bool isObscure = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 190.0),
          child: Text(widget.textFieldType, style: Textstyles.textStyle_4_2),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextFormField(
            validator: widget.validator,
            textAlign: TextAlign.start,
            controller: widget.controller,
            obscureText: isObscure,
            decoration: InputDecoration(
              hintStyle: TextStyle(fontSize: 12, color: Colors.grey),
              prefixIcon: Icon(
                widget.icon,
                color: const Color.fromARGB(255, 7, 47, 223),
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: widget.hitext,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
                icon: Icon(
                  isObscure ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
              ),
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
