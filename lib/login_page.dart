/* Authored by: Phoebe Marion B. Castro
Company: APEX Mire
Project: JANA
Feature: [JANA-002] LogIn
Description: This is where the user can login to their existing account.
 */

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF3831A4),
        body: Stack(
          children: [
            // Background Image
            Positioned(
              top: 50,
              left: 0,
              right: 0,
              child: Opacity(
                opacity: 0.5,
                child: Image.asset(
                  'assets/map.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Logo Image
            Positioned(
              top: 100,
              left: 0,
              right: 0,
              child: Center(
                child: Image.asset(
                  'assets/JANA dark.png',
                  width: 90, // Adjust the width as needed
                ),
              ),
            ),
            // Login Box
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Ma-JANA!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 44,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10), // Adjust the space between password field and "Forgot password?" text
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            // Add your forgot password functionality here
                          },
                          child: Text(
                            'Forgot password?',
                            style: TextStyle(
                              color: Colors.grey,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    SizedBox(
                      height: 40, // Adjust the height as needed
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your login functionality here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFFA5FAE),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18, // Adjust the font size as needed
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10), // Adjust the space between password field and "Forgot password?" text
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
  onPressed: () {
    // Add your forgot password functionality here
  },
  child: RichText(
    text: TextSpan(
      style: TextStyle(
        color: Colors.grey,
        decoration: TextDecoration.underline,
        fontWeight: FontWeight.bold,
      ),
      children: [
        TextSpan(
          text: 'Sakay na!',
        ),
      ],
    ),
  ),
),

                      ],
                    ),
                    SizedBox(height: 10), // Adjust the space between password field and "Forgot password?" text
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
  onPressed: () {
    // Add your forgot password functionality here
  },
  child: RichText(
    text: TextSpan(
      style: TextStyle(
        color: Colors.grey,
        decoration: TextDecoration.underline,
        fontWeight: FontWeight.bold,
      ),
      children: [
        TextSpan(
          text: 'Pasada na!',
        ),
      ],
    ),
  ),
),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}