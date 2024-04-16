import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_1/views/home_views.dart';
import 'package:new_1/widgets/text_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
            onTap: () {
              Get.offAll(() => const SignUp());
            },
            child: MyTextWidget(text: 'Welcome Home')),
      ),
    );
  }
}
