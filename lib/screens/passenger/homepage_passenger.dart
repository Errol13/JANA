import 'package:flutter/material.dart';
import 'package:jana_project/reusable%20code/border_style.dart';
import 'package:jana_project/reusable%20code/buttons.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:jana_project/screens/passenger/ride_request.dart';
import 'package:jana_project/screens/registration/signin_page.dart';

class PhomePage extends StatefulWidget {
  const PhomePage({Key? key}) : super(key: key);

  @override
  _PhomePageState createState() => _PhomePageState();
}

class _PhomePageState extends State<PhomePage> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            // Foreground container
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Container(
                  color:
                      Colors.white, // Set container background color to white
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 110),
                      Center(
                        child: Text(
                          'Hello, Commuter!',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      SizedBox(height: 130),
                      Text(
                        'Where do you wanna go today?',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 5),
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[300],
                          suffixIcon: InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => RideRequestPage(),
                                ),
                              );
                            },
                            child: Icon(Icons.send, color: Colors.purple),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ), // Rounded border
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ), // Rounded border
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ), // Rounded border
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Background image positioned at the bottom
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              height: MediaQuery.of(context).size.height / 2.5,
              child: const Image(
                image: AssetImage('assets/map1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
