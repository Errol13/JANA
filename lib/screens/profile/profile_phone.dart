import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jana_project/reusable%20code/border_style.dart';
import 'package:jana_project/reusable%20code/buttons.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:jana_project/screens/passenger/homepage_passenger.dart';
import 'package:jana_project/screens/passenger/passenger_looking.dart';
import 'package:jana_project/screens/profile/email_verification.dart';
import 'package:jana_project/screens/registration/signin_page.dart';
import 'package:card_loading/card_loading.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ProfileNumberPage extends StatefulWidget {
  const ProfileNumberPage({Key? key}) : super(key: key);

  @override
  _ProfileNumberState createState() => _ProfileNumberState();
}

class _ProfileNumberState extends State<ProfileNumberPage> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 56, 46, 184),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 56, 46, 184)),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Text(
          'Mobile Number',
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
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Text(
                    'Make sure that it is correct and working mobile number'),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: SizedBox(
                  width: 400,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText:
                          'Mobile Number', // Create a text input field for the user's email.
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
                          color:
                              Color(0xff72728b), // Change the border color here
                          width: 1.0, // Adjust the border width as needed
                        ),
                      ),

                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 12.0, horizontal: 19.0),
                    ),
                    keyboardType: TextInputType
                        .emailAddress, // Set keyboard type for email.
                    style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),
              Expanded(child: SizedBox()),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                  color: Color.fromARGB(255, 255, 255, 255),
                  border: Border(
                    top: BorderSide(
                      //                    <--- top side
                      color: Color.fromARGB(100, 0, 0, 0),
                      width: 0.5,
                    ),
                  ),
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: Container(
                    height: 50,
                    width: 250,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PhomePage()),
                          );
                        },
                        child: Text(
                          'Save',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffFA5FAE),
                        )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
