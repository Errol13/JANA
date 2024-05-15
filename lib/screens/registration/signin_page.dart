/* Authored by: Phoebe Marion B. Castro
Company: APEX Mire
Project: JANA
Feature: [JANA-002] LogIn
Description: This is where the user can login to their existing account.
 */

import 'package:flutter/material.dart';
import 'package:jana_project/reusable%20code/border_style.dart';
import 'package:jana_project/reusable%20code/buttons.dart';
import 'package:jana_project/screens/driver/homepage_driver.dart';
import 'package:jana_project/screens/registration/signup_pass_page.dart';
import 'package:jana_project/screens/registration/signup_1driver_page.dart';
import 'package:jana_project/screens/passenger/homepage_passenger.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF3831A4),
        body: Stack(
          children: [
            // Background Image
            Positioned(
              top: 100,
              left: 0,
              right: 0,
              child: Opacity(
                opacity: 0.9,
                child: Image.asset(
                  'assets/map.png',
                  height: 500,
                  // width: 80,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Logo Image
            Positioned(
              top: 190,
              left: 0,
              right: 0,
              child: Center(
                child: Image.asset(
                  'assets/JANA dark.png',
                  height: 120,
                  width: 100, // Adjust the width as needed
                ),
              ),
            ),
            // Login Box
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Color(0xFFFA5FAE), width: 3)),
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
                        color: Color(0xff63831A4),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        labelText:
                            'Email', // Create a text input field for the user's email.
                        filled: true,
                        fillColor: Colors.white,
                        labelStyle: const TextStyle(
                          color: Color(0xff3d3e3f),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Color(0xffFA5FAE),
                          size: 30,
                        ),
                        focusedBorder: AppBorderStyles.focusedBorder,
                        enabledBorder: AppBorderStyles.enabledBorder,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 16.0),
                      ),
                      keyboardType: TextInputType
                          .emailAddress, // Set keyboard type for email.
                      style: const TextStyle(
                        color: Color(0xffFA5FAE),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText:
                            'Password', // Create a text input field for the user's email.
                        filled: true,
                        fillColor: Colors.white,
                        labelStyle: const TextStyle(
                          color: Color(0xff3d3e3f),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color(0xffFA5FAE),
                          size: 30,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: const BorderSide(
                            color: Color(
                                0xffFA5FAE), // Change the border color here
                            width: 2.0, // Adjust the border width as needed
                          ),
                        ),
                        //enabled border styling
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: const BorderSide(
                            color: Color(
                                0xff72728b), // Change the border color here
                            width: 1.0, // Adjust the border width as needed
                          ),
                        ),

                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 16.0),
                      ),
                      keyboardType: TextInputType
                          .emailAddress, // Set keyboard type for email.
                      style: const TextStyle(
                        color: Color(0xffFA5FAE),
                      ),
                    ),
                    SizedBox(
                        height:
                            10), // Adjust the space between password field and "Forgot password?" text
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

                    Row(
                      children: <Widget>[
                        CustomButton(
                          text: 'Login D',
                          color: Color(0xFFFA5FAE), // Set button color to pink
                          width: 170,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DhomePage()),
                            );
                          },
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        CustomButton(
                          text: 'Login P',
                          color: Color(0xFFFA5FAE), // Set button color to pink
                          width: 170,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PhomePage()),
                            );
                          },
                        ),
                      ],
                    ),

                    SizedBox(height:10), // Adjust the space between password field and "Forgot password?" text
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'New Commuter?',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'New Driver?',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 0.2),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => RootPage()),
                                        );
                                      },
                                      child: Text(
                                        'Sakay na!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DriverPage()),
                                        );
                                      },
                                      child: Text(
                                        'Pasada na!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
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
