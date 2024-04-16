import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_1/views/destination.dart';
import 'package:new_1/widgets/text_widget.dart';
import 'package:new_1/widgets/textField_widget.dart';
import 'package:new_1/controllers/home_controllers.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: MyTextWidget(
          text: "SignUp page",
          isHeading: true,
          colors: Colors.black,
        ),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 70),
                Form(
                  key: controller.formkey,
                  child: Column(
                    children: [
                      MyFieldWidget(
                        text: MyTextWidget(text: 'Email Address'),
                        controller: controller.eController,
                        validate: controller.validateEmail,
                      ),
                      const SizedBox(height: 10),
                      MyFieldWidget(
                        text: MyTextWidget(text: 'Password'),
                        controller: controller.pController,
                        isPassword: true,
                        validate: controller.validatePassword,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    if (controller.formkey.currentState!.validate()) {
                      Get.snackbar(
                        'wow!',
                        'Logged in successfully',
                        snackPosition: SnackPosition.BOTTOM,
                        backgroundColor: Colors.green,
                        colorText: Colors.white,
                        duration: const Duration(seconds: 3),
                        isDismissible: true,
                      );
                      Get.to(() => const HomePage());
                    }
                  },
                  child: Container(
                    width: 200,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: MyTextWidget(
                        text: 'Come here',
                        colors: Colors.white,
                        isHeading: true,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        onPressed: () {
          controller.clickChanger();
        },
        child: const Icon(Icons.home),
      ),
    );
  }
}
