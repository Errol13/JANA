import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:jana_project/data_model/user_model.dart';
import 'package:jana_project/reusable%20code/border_style.dart';
import 'package:jana_project/reusable%20code/buttons.dart';
import 'package:jana_project/reusable%20code/pwd_validation.dart';
import 'package:jana_project/screens/registration/signup_2driver_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jana_project/auth/auth.dart';

class DriverPage extends StatefulWidget {
  const DriverPage({Key? key}) : super(key: key);

  @override
  _DriverPageState createState() => _DriverPageState();
}

class _DriverPageState extends State<DriverPage> {
  bool _passwordVisible = false;
  bool _confirmPasswordVisible = false;

  Auth auth = Auth();

  // Email and password auth
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _firstNameController = TextEditingController();
  String _contactNumberController = '0';

  // form validation
  bool _validateForm() {
    if (_lastNameController.text.isEmpty ||
        _firstNameController.text.isEmpty ||
        _emailController.text.isEmpty ||
        _passwordController.text.isEmpty ||
        _confirmPasswordController.text.isEmpty) {
      return false;
    }
    if (!isPasswordMatched(
      passwordController: _passwordController,
      confirmPasswordController: _confirmPasswordController,
      context: context,
    )) {
      return false;
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff63831A4),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'Cancel',
          style: TextStyle(color: Colors.white), // Set title color to white
        ),
        leading: IconButton(
          color: Colors.white,
          icon: const Icon(Icons.cancel),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Stack(
        children: [
          // Positioned widget for map.png
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height / 2,
            child: const Image(
              image: AssetImage('map.png'), // Replace with your top image path
              fit: BoxFit.cover,
            ),
          ),
          // Logo Image
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/JANA dark.png',
                height: 100,
                width: 90, // Adjust the width as needed
              ),
            ),
          ),
          // Positioned widget for JANA_dark.png
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height / 1.5,
            child: Container(
              decoration: BoxDecoration(
                border:
                    Border(top: BorderSide(color: Color(0xFFFA5FAE), width: 3)),
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), // Curved top-left corner
                  topRight: Radius.circular(30), // Curved top-right corner
                ),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // First Name TextField
                  TextFormField(
                    controller: _firstNameController,
                    decoration: InputDecoration(
                      labelText: 'First Name',
                      labelStyle: TextStyle(color: Colors.grey),
                      focusedBorder: AppBorderStyles.focusedBorder,
                      enabledBorder: AppBorderStyles.enabledBorder,
                    ),
                  ),
                  const SizedBox(height: 25),
                  // Last Name TextField
                  TextFormField(
                    controller: _lastNameController,
                    decoration: InputDecoration(
                      labelText: 'Last Name',
                      labelStyle: TextStyle(color: Colors.grey),
                      focusedBorder: AppBorderStyles.focusedBorder,
                      enabledBorder: AppBorderStyles.enabledBorder,
                    ),
                  ),
                  const SizedBox(height: 25),
                  // Email Address TextField with validation
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      labelStyle: TextStyle(color: Colors.grey),
                      focusedBorder: AppBorderStyles.focusedBorder,
                      enabledBorder: AppBorderStyles.enabledBorder,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email address';
                      }
                      // Add more complex validation here if needed
                      return null;
                    },
                  ),
                  const SizedBox(height: 25),
                  // Password TextField with visibility toggle
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.grey),
                      focusedBorder: AppBorderStyles.focusedBorder,
                      enabledBorder: AppBorderStyles.enabledBorder,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                    ),
                    obscureText: !_passwordVisible,
                  ),
                  const SizedBox(height: 25),
                  // Confirm Password TextField with visibility toggle
                  TextFormField(
                    controller: _confirmPasswordController,
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      labelStyle: TextStyle(color: Colors.grey),
                      focusedBorder: AppBorderStyles.focusedBorder,
                      enabledBorder: AppBorderStyles.enabledBorder,
                      suffixIcon: IconButton(
                        icon: Icon(
                          _confirmPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _confirmPasswordVisible = !_confirmPasswordVisible;
                          });
                        },
                      ),
                    ),
                    obscureText: !_confirmPasswordVisible,
                  ),
                  const SizedBox(height: 25),
                  // Sign Up Button
                  CustomButton(
                    text: 'Next',
                    color: Color(0xFFFA5FAE), // Set button color to pink
                    onPressed: () async {
                      //start of onPressed method
                      // Validate passwords
                      if (isPasswordMatched(
                        passwordController: _passwordController,
                        confirmPasswordController: _confirmPasswordController,
                        context: context,
                      ))
                      // Validate form inputs
                      if (_validateForm()) {
                        // Pass user data to Driver2Page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Driver2Page(
                              firstName: _firstNameController.text,
                              lastName: _lastNameController.text,
                              email: _emailController.text.trim(),
                              password: _passwordController.text,
                              confirmPassword: _confirmPasswordController.text,
                              contactNumber: _contactNumberController
                            ),
                          ),
                        );
                      } else {
                      // Display a banner for required fields
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('All fields are required')),
                      );
                    }
                    },
                    //end of next button
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
