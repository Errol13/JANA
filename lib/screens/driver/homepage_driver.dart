import 'package:flutter/material.dart';
import 'package:jana_project/reusable%20code/border_style.dart';
import 'package:jana_project/reusable%20code/buttons.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:jana_project/screens/profile/history.dart';
import 'package:jana_project/screens/profile/profile.dart';
import 'package:jana_project/screens/profile/settings.dart';
import 'package:jana_project/screens/registration/signin_page.dart';
import 'package:jana_project/screens/driver/driver_accept.dart';

class DhomePage extends StatefulWidget {
  const DhomePage({Key? key}) : super(key: key);

  @override
  _DhomePageState createState() => _DhomePageState();
}

class _DhomePageState extends State<DhomePage> {
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
              height: 300,
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
                  GestureDetector(
                    onTap: () {
                      // Redirect to other page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DacceptPage()),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Your Statistics',
                          style:
                              TextStyle(color: Color(0xFFFA5FAE), fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.only(left: 30, right: 5),
                        decoration: BoxDecoration(
                            color: Color(0xFFE7E7E7),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.star_border_outlined,
                                  color: Color(0xFFFA5FAE),
                                ),
                                Expanded(child: SizedBox())
                              ],
                            ),
                            Text(
                              '6.9/10',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Popularity',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      )),
                      Expanded(
                          child: Container(
                        margin: EdgeInsets.only(left: 5, right: 30),
                        decoration: BoxDecoration(
                            color: Color(0xFFE7E7E7),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Icon(
                                  Icons.percent_outlined,
                                  color: Color(0xFFFA5FAE),
                                ),
                                Expanded(child: SizedBox())
                              ],
                            ),
                            Text(
                              '12.4%',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Cancellation Rate',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      )),
                    ],
                  ),
                  Expanded(child: SizedBox()),
                  Container(
                    margin: EdgeInsets.all(30),
                    child: Text(
                      "Note: Drivers with highest popularity and lowest cancellation rate are more likely to receive passenger’s ride requests.",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ))
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
