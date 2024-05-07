/* Authored by: Xavier D. Santiago
Company: APEX Mire
Project: JANA
Feature: [JANA-002] Sign Up/Registration page
Description: This is where the user can register their account.
 */
import 'package:flutter/material.dart';
import 'package:jana_project/reusable%20code/border_style.dart';
import 'package:jana_project/reusable%20code/buttons.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  bool _passwordVisible = false;
  bool _confirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
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
                  // Contact Number TextField
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Contact Number',
                      labelStyle: TextStyle(color: Colors.grey),
                      focusedBorder: AppBorderStyles.focusedBorder,
                      enabledBorder: AppBorderStyles.enabledBorder,
                    ),
                  ),
                  const SizedBox(height: 25),
                  // Password TextField with visibility toggle
                  TextFormField(
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
                    text: 'Sign Up',
                    color: Color(0xFFFA5FAE), // Set button color to pink
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
