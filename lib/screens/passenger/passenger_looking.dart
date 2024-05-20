import 'package:flutter/material.dart';
import 'package:jana_project/reusable%20code/border_style.dart';
import 'package:jana_project/reusable%20code/buttons.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:jana_project/screens/passenger/driver_found.dart';
import 'package:jana_project/screens/profile/history.dart';
import 'package:jana_project/screens/profile/profile.dart';
import 'package:jana_project/screens/profile/settings.dart';
import 'package:jana_project/screens/registration/signin_page.dart';

class PassengerLookingPage extends StatefulWidget {
  const PassengerLookingPage({Key? key}) : super(key: key);

  @override
  _PassengerLookingState createState() => _PassengerLookingState();
}

class _PassengerLookingState extends State<PassengerLookingPage> {
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() {
    Future.delayed(
      Duration(seconds: 5),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => DriverFoundPage()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 56, 46, 184),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(0, 55, 46, 184),
      ),
      body: Stack(
        children: [
          // Background photo
          Positioned.fill(
            child: Image.asset(
              'assets/gmaps.png', // Replace with your background photo path
              fit: BoxFit.cover,
            ),
          ),
          // Foreground container with text and image
          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width,
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height / 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(
                        color: Colors.grey,
                        width: 3.0), // Pink border with a thickness of 2.0
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Looking for drivers',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'near you ...',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    Image.asset(
                      'assets/radar.png', // Replace with your image path
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

      //burger
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: Column(
          // Important: Remove any padding from the ListView.

          children: [
            const SizedBox(
              width: 400,
              height: 250,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 56, 46, 184),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/Ellipse 11.png'),
                      height: 100,
                      width: 100,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Miguel Toledana",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('View Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.history_edu),
              title: Text('Booking History'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HistoryPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
            ),
            Expanded(child: SizedBox()),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignInPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
