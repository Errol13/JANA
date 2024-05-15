import 'package:flutter/material.dart';

bool isPasswordMatched({
  required TextEditingController passwordController,
  required TextEditingController confirmPasswordController,
  required BuildContext context,
}) {
  if (passwordController.text != confirmPasswordController.text) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text('Password does not match'),
      ),
    );
    return false;
  }
  return true;
}
