import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var clicks = 0.obs;
  final eController = TextEditingController();
  final pController = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  List values = [10, 20, 30];

  var save = 'Enter Credentials'.obs;

  void clickChanger() {
    clicks.value++;
  }

  String? validateEmail(String? email) {
    if (email == '' || email == null) {
      return 'Email can not be empty';
    }
    return null;
  }

  String? validatePassword(String? password) {
    if (password == '' || password == null) {
      return 'Password can not be empty';
    }
    return null;
  }

  void saveDetails(String txt) {
    save.value = txt;
  }
}
