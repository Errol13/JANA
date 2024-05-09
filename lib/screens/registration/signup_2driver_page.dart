import 'package:flutter/material.dart';
import 'package:jana_project/reusable%20code/border_style.dart';
import 'package:jana_project/reusable%20code/buttons.dart';
import 'package:jana_project/screens/driver/homepage_driver.dart';

class Driver2Page extends StatefulWidget {
  const Driver2Page({Key? key}) : super(key: key);

  @override
  _Driver2PageState createState() => _Driver2PageState();
}

class _Driver2PageState extends State<Driver2Page> {
  bool _passwordVisible = false;
  bool _confirmPasswordVisible = false;

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
                  // Driver's License Display Field with File Attachment
                  Container(
                    height: 48,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey), // Border styling
                      borderRadius: BorderRadius.circular(
                          15.0), // Optional: Adjust border radius
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "Driver's License",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            // Add your functionality to handle file attachment here
                          },
                          icon: Icon(Icons.attach_file),
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  // Vehicle Type TextField
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: 'Vehicle Type',
                      labelStyle: TextStyle(color: Colors.grey),
                      enabledBorder: AppBorderStyles.enabledBorder,
                      focusedBorder: AppBorderStyles.focusedBorder,
                    ),
                    items: <String>['Car', 'Tricycle', 'Motorcycle', 'Van']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      // Add your logic here for when a new value is selected
                    },
                  ),

                  const SizedBox(height: 25),
                  // Plate Number
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Plate Number',
                      labelStyle: TextStyle(color: Colors.grey),
                      focusedBorder: AppBorderStyles.focusedBorder,
                      enabledBorder: AppBorderStyles.enabledBorder,
                    ),
                  ),
                  const SizedBox(height: 25),
                  // OR/CR
                  Container(
                    height: 48,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey), // Border styling
                      borderRadius: BorderRadius.circular(
                          15.0), // Optional: Adjust border radius
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "OR/CR",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            // Add your functionality to handle file attachment here
                          },
                          icon: Icon(Icons.attach_file),
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),
                  // Confirm Password TextField with visibility toggle
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Contact Number',
                      labelStyle: TextStyle(color: Colors.grey),
                      focusedBorder: AppBorderStyles.focusedBorder,
                      enabledBorder: AppBorderStyles.enabledBorder,
                    ),
                  ),
                  const SizedBox(height: 25),
                  // Sign Up Button
                  CustomButton(
                    text: 'Sign Up',
                    color: Color(0xFFFA5FAE), // Set button color to pink
                    onPressed: () {
                      Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DhomePage()),
                            );
                    },
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
