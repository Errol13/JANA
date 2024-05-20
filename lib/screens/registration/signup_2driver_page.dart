import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart' as file_picker;
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:jana_project/auth/auth.dart';
import 'package:jana_project/data_model/user_model.dart';
import 'package:jana_project/reusable%20code/border_style.dart';
import 'package:jana_project/reusable%20code/buttons.dart';
import 'package:jana_project/screens/driver/homepage_driver.dart';

class Driver2Page extends StatefulWidget {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String confirmPassword;
  final String contactNumber;

  const Driver2Page({
    Key? key,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.contactNumber,
  }) : super(key: key);

  @override
  _Driver2PageState createState() => _Driver2PageState();
}

class _Driver2PageState extends State<Driver2Page> {
  bool _passwordVisible = false;
  bool _confirmPasswordVisible = false;

  //controllers for driver's info
  TextEditingController _vehicleTypeController = TextEditingController();
  TextEditingController _plateNumberController = TextEditingController();
  TextEditingController _contactNumberController = TextEditingController();

  Auth auth = Auth(); // Create an instance of the Auth class

  File? _driversLicense;
  File? _orCr;

  // Function to handle file selection
  Future<void> _pickFile(String fileType) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: file_picker.FileType.custom,
      allowedExtensions: [
        'pdf',
        'doc'
            'png'
      ], // Adjust the allowed file extensions as needed
    );

    if (result != null) {
      setState(() {
        if (fileType == 'driverLicense') {
          _driversLicense = File(result.files.single.path!);
        } else if (fileType == 'orCr') {
          _orCr = File(result.files.single.path!);
        }
      });
    }
  }

  //validate Form
  bool _validateForm() {
    if (_vehicleTypeController.text.isEmpty ||
        _plateNumberController.text.isEmpty ||
        _contactNumberController.text.isEmpty) {
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
                          onPressed: () => _pickFile('driverLicense'),
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
                      setState(() {
                        _vehicleTypeController.text = newValue ??
                            ''; // Store the selected value in the controller
                      });
                    },
                  ),

                  const SizedBox(height: 25),
                  // Plate Number
                  TextFormField(
                    controller: _plateNumberController,
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
                          onPressed: () => _pickFile('orCr'),
                          icon: Icon(Icons.attach_file),
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 25),
                  // Confirm Password TextField with visibility toggle
                  TextFormField(
                    controller: _contactNumberController,
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
                    onPressed: () async {
                      //start of onPressed method
                      if (_validateForm()) {
                        // Show loading indicator
                        showDialog(
                          context: context,
                          builder: (context) => Center(
                            child: CircularProgressIndicator(
                                color: Color(0xFFFA5FAE)),
                          ),
                        );

                        try {
                          // Use Firebase Authentication for sign up
                          UserCredential authResult =
                              await auth.createUserWithEmailAndPassword(
                                  email: widget.email,
                                  password: widget.password);

                          final user = UserModel(
                            firstName: widget.firstName,
                            lastName: widget.lastName,
                            email: widget.email,
                            contactNumber: widget.contactNumber,
                            vehicleType: _vehicleTypeController.text,
                            plateNumber: _plateNumberController.text,
                            isDriver:
                                true, // Assuming this is set to true when registering as a driver
                          );

                          // Get the Firebase Authentication User ID
                          String firebaseUserId = authResult.user?.uid ?? "";

                          // Store additional user data in Firestore using the Firebase Authentication User ID
                          final docUser = FirebaseFirestore.instance
                              .collection('Users')
                              .doc(firebaseUserId);
                          final json = user.toJson();
                          await docUser.set(json);

                          // Hide loading indicator
                          Navigator.of(context).pop();

                          // Navigate to the home page or any other destination
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DhomePage()),
                          );
                        } catch (e) {
                          // Handle errors here
                          print('Error: $e');
                          // Hide loading indicator
                          Navigator.of(context).pop();
                          // Show error message to the user
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content:
                                Text('Error signing up. Please try again.'),
                          ));
                        }
                      } else {
                        // Show validation error message
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text('Please fill in all required fields.'),
                        ));
                      }
                    },
                    //end of onPressed method
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

class FileType {}
