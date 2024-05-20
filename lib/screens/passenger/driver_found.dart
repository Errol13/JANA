import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jana_project/reusable%20code/border_style.dart';
import 'package:jana_project/reusable%20code/buttons.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:jana_project/screens/passenger/commuter_pickup.dart';
import 'package:jana_project/screens/passenger/passenger_looking.dart';
import 'package:jana_project/screens/profile/history.dart';
import 'package:jana_project/screens/profile/profile.dart';
import 'package:jana_project/screens/profile/settings.dart';
import 'package:jana_project/screens/registration/signin_page.dart';
import 'package:card_loading/card_loading.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class DriverFoundPage extends StatefulWidget {
  const DriverFoundPage({Key? key}) : super(key: key);

  @override
  _DriverFoundState createState() => _DriverFoundState();
}

class _DriverFoundState extends State<DriverFoundPage> {
  void initState() {
    super.initState();
    _navigateToDialog();
    _navigateToNextScreen();
  }

  void _navigateToDialog() {
    Future.delayed(
      Duration(seconds: 0),
      () {
        showAutoDismissAlert(context);
      },
    );
  }

  void _navigateToNextScreen() {
    Future.delayed(
      Duration(seconds: 10),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => CPickupPage()),
        );
      },
    );
  }

  void showAutoDismissAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        // Schedule a delayed dismissal of the alert dialog after 3 seconds
        Future.delayed(Duration(seconds: 5), () {
          Navigator.of(context).pop(); // Close the dialog
        });

        // Return the AlertDialog widget
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: Container(
            height: 190,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1, color: Color(0xFF0053AD)),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      child: Text(
                        'We found you a driver!',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ))
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      'assets/pb.png',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Phoebe Castro',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Row(
                          children: [
                            Text(
                              textAlign: TextAlign.left,
                              '09123456789',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '6.9/10',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.star,
                              color: Color(0xFFDEF00B),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(),
                    Text(
                      '15800001425360',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(),
                    Text('ETA 40s',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox()
                  ],
                )
              ],
            ),
          ),
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
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              child: Image.asset(
                'assets/gmaps.png',
              ),
            ),
            Container(
              child: Column(
                children: [
                  Expanded(child: SizedBox()),
                  Container(
                      decoration: BoxDecoration(
                          border: Border(
                              top: BorderSide(
                                  color: Color(0xff72728b), width: 5)),
                          color: Color.fromARGB(255, 56, 46, 184),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            'Estimated time of arrival',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.normal),
                          ),
                          Text(
                            '8 mins.',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 10,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                margin: EdgeInsets.only(bottom: 10),
                              ),
                              CardLoading(
                                cardLoadingTheme: CardLoadingTheme(
                                    colorOne: Colors.white,
                                    colorTwo:
                                        Color.fromARGB(255, 165, 164, 164)),
                                height: 10,
                                width: 80,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                margin: EdgeInsets.only(bottom: 10),
                              ),
                              Container(
                                height: 10,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 165, 164, 164),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                margin: EdgeInsets.only(bottom: 10),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Your driver is on his way',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: 10,
                              ),
                              LoadingAnimationWidget.waveDots(
                                color: Colors.white,
                                size: 20,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      'assets/pb.png',
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Phoebe Castro',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Text(
                                      'ABC 123',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Text('091234567891',
                                        style: TextStyle(fontSize: 15)),
                                    Row(
                                      children: [
                                        Text(
                                          '6.9/10',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                        Icon(Icons.star,
                                            color: Color(0xFFDEF00B))
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.call,
                                            size: 50,
                                            color: Color.fromARGB(
                                                255, 81, 133, 230)),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(Icons.inbox,
                                            size: 50,
                                            color: Color.fromARGB(
                                                255, 81, 133, 230))
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ))
                ],
              ),
            ),
          ],
        ),
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
