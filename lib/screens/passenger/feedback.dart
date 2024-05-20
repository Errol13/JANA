import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jana_project/reusable%20code/border_style.dart';
import 'package:jana_project/reusable%20code/buttons.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:jana_project/screens/passenger/homepage_passenger.dart';
import 'package:jana_project/screens/passenger/passenger_looking.dart';
import 'package:jana_project/screens/profile/history.dart';
import 'package:jana_project/screens/profile/profile.dart';
import 'package:jana_project/screens/profile/settings.dart';
import 'package:jana_project/screens/registration/signin_page.dart';
import 'package:card_loading/card_loading.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FeedBackPage extends StatefulWidget {
  const FeedBackPage({Key? key}) : super(key: key);

  @override
  _FeedBackState createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBackPage> {
  void initState() {
    super.initState();
    _navigateToDialog();
  }

  void _navigateToDialog() {
    Future.delayed(
      Duration(seconds: 0),
      () {
        showAutoDismissAlert(context);
      },
    );
  }

  void showAutoDismissAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        // Schedule a delayed dismissal of the alert dialog after 3 seconds

        // Return the AlertDialog widget
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          content: Container(
            height: 200,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1, color: Color(0xFF0053AD)),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.close))
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                      child: Text(
                        'Rate your experience',
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
                RatingBar.builder(
                  initialRating: 0,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Color(0xFFDEF00B),
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  child: Text(
                    'Submit',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 80),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: Color(0xFF3831A4),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
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
                            height: 35,
                          ),
                          Text(
                            'You\'re here!',
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
                              Container(
                                height: 10,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                margin: EdgeInsets.only(bottom: 10),
                              ),
                              Container(
                                height: 10,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: Colors.white,
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
                              Text('You have arrived at your destination',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
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
            Container(
              child: Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PhomePage()),
                      );
                    },
                    icon: Icon(Icons.close)),
              ),
            )
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
