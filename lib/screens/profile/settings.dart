import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jana_project/reusable%20code/border_style.dart';
import 'package:jana_project/reusable%20code/buttons.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:jana_project/screens/passenger/passenger_looking.dart';
import 'package:jana_project/screens/registration/signin_page.dart';
import 'package:card_loading/card_loading.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 56, 46, 184),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 56, 46, 184)),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Text(
          'Settings',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          border: Border(
            top: BorderSide(
              //                    <--- top side
              color: Colors.black,
              width: 1.0,
            ),
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Set your password',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 350,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText:
                      'New password', // Create a text input field for the user's email.
                  filled: true,
                  fillColor: Colors.white,
                  labelStyle: const TextStyle(
                    color: Color(0xff3d3e3f),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(
                          106, 0, 0, 0), // Change the border color here
                      width: 2.0, // Adjust the border width as needed
                    ),
                  ),
                  //enabled border styling
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      color: Color(0xff72728b), // Change the border color here
                      width: 1.0, // Adjust the border width as needed
                    ),
                  ),

                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 19.0),
                ),
                keyboardType:
                    TextInputType.emailAddress, // Set keyboard type for email.
                style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 350,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText:
                      'Confirm password', // Create a text input field for the user's email.
                  filled: true,
                  fillColor: Colors.white,
                  labelStyle: const TextStyle(
                    color: Color(0xff3d3e3f),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(
                          106, 0, 0, 0), // Change the border color here
                      width: 2.0, // Adjust the border width as needed
                    ),
                  ),
                  //enabled border styling
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      color: Color(0xff72728b), // Change the border color here
                      width: 1.0, // Adjust the border width as needed
                    ),
                  ),

                  contentPadding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 19.0),
                ),
                keyboardType:
                    TextInputType.emailAddress, // Set keyboard type for email.
                style: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'Delete account',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.red),
                ))
          ],
        ),
      ),
    );
  }
}
