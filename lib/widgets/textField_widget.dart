import 'package:flutter/material.dart';
import 'package:new_1/widgets/text_widget.dart';

class MyFieldWidget extends StatelessWidget {
  MyFieldWidget({
    super.key,
    this.color = Colors.black,
    required this.text,
    required this.controller,
    this.isPassword = false,
    required this.validate,
  });

  Color color;
  final MyTextWidget text;
  final TextEditingController controller;
  bool isPassword;
  final validate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 10),
      child: TextFormField(
        validator: validate,
        obscureText: isPassword,
        controller: controller,
        decoration: InputDecoration(
          label: text,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          suffixIcon: isPassword
              ? IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.visibility),
                )
              : Container(width: 0),
        ),
      ),
    );
  }
}
