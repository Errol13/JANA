import 'package:flutter/material.dart';
import 'package:jana_project/reusable%20code/border_style.dart';
import 'package:jana_project/reusable%20code/buttons.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:jana_project/screens/profile/history.dart';
import 'package:jana_project/screens/profile/profile.dart';
import 'package:jana_project/screens/profile/settings.dart';
import 'package:jana_project/screens/registration/signin_page.dart';
import 'package:jana_project/screens/driver/driver_dropoff.dart';
import 'package:jana_project/screens/driver/driver_map.dart';

class DpickupPage extends StatefulWidget {
  const DpickupPage({Key? key}) : super(key: key);

  @override
  _DpickupPageState createState() => _DpickupPageState();
}

class _DpickupPageState extends State<DpickupPage> {
  bool positive = false;
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 56, 46, 184),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(0, 55, 46, 184),
        actions: <Widget>[
          Text(
            'Online',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            width: 5,
          ),
          CustomAnimatedToggleSwitch<bool>(
            current: positive,
            values: [false, true],
            spacing: 10.0,
            indicatorSize: Size.square(20.0),
            animationDuration: const Duration(milliseconds: 200),
            animationCurve: Curves.linear,
            onChanged: (b) => setState(() => positive = b),
            iconBuilder: (context, local, global) {
              return const SizedBox();
            },
            cursors: ToggleCursors(defaultCursor: SystemMouseCursors.click),
            onTap: (_) => setState(() => positive = !positive),
            iconsTappable: false,
            wrapperBuilder: (context, global, child) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                      left: 5.0,
                      right: 5.0,
                      height: 20.0,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Color.lerp(
                              Color.fromARGB(248, 133, 133, 133),
                              Color.fromARGB(255, 44, 207, 29),
                              global.position),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50.0)),
                        ),
                      )),
                  child,
                ],
              );
            },
            foregroundIndicatorBuilder: (context, global) {
              return SizedBox.fromSize(
                size: global.indicatorSize,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: Color.lerp(
                        Colors.white, theme.primaryColor, global.position),
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black38,
                          spreadRadius: 0.05,
                          blurRadius: 1.1,
                          offset: Offset(0.0, 0.8))
                    ],
                  ),
                ),
              );
            },
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/map.png'), fit: BoxFit.fill)),
        child: Column(
          children: [
            SizedBox(
              height: 400,
            ),
            Expanded(
              child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Color(0xFFFA5FAE), width: 3)),
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25.0),
                        child: Row(
                          children: [
                            Text(
                              'PICK UP',
                              style: TextStyle(
                                color: Color(0xFFFA5FAE),
                                fontWeight: FontWeight.w600,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Center(
                          child: Row(
                            children: [
                              // Left Column with Text
                              Expanded(
                                flex: 2,
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Rizal Park, Elias Street, Naga ...',
                                    style: TextStyle(
                                      fontSize: 36,
                                    ),
                                  ),
                                ),
                              ),
                              // Right Column with Image
                              Expanded(
                                flex: 1,
                                child: GestureDetector(
                                  onTap: () {
                                    // Navigate to another page here
                                    // Example:
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => DmapPage()),
                                    );
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      'assets/Vector.png',
                                      width: 30,
                                      height: 30,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Center(
                          child: Row(
                            children: [
                              // Left Column with Text "Total Fare:"
                              Expanded(
                                flex: 2,
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Total Fare:',
                                    style: TextStyle(
                                      fontSize: 24,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                              // Right Column with Two Rows
                              Expanded(
                                flex: 1,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // First Row with Text "30.00"
                                    Text(
                                      '₱30.00',
                                      style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    // Second Row with Text "CASH" and Credit Icons
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.credit_card,
                                          size: 20,
                                        ),
                                        Text(
                                          'CASH',
                                          style: TextStyle(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 30,
                                child: IconButton(
                                  icon: Icon(Icons.call),
                                  color: Colors.white,
                                  onPressed: () {
                                    // Add onPressed logic here
                                  },
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Call',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 30,
                                child: IconButton(
                                  icon: Icon(Icons.chat),
                                  color: Colors.white,
                                  onPressed: () {
                                    // Add onPressed logic here
                                  },
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Chat',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 30,
                                child: IconButton(
                                  icon: Icon(Icons.cancel),
                                  color: Colors.white,
                                  onPressed: () {
                                    // Add onPressed logic here
                                  },
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Cancel',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8), // Add padding horizontally
                              child: CustomButton(
                                text: 'I\'m here',
                                color: Colors.white,
                                textColor: Color(0xFFFA5FAE),
                                borderColor: Color(0xFFFA5FAE),
                                width: 170,
                                onPressed: () {
                                  // Add onPressed logic for "I'm here" button
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                              width: 8), // Add some spacing between the buttons
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8), // Add padding horizontally
                              child: CustomButton(
                                text: 'Pick Up',
                                color: Color(0xFFFA5FAE),
                                width: 170,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DdropoffPage(),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
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
