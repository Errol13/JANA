import 'package:flutter/material.dart';
import 'package:jana_project/reusable%20code/border_style.dart';
import 'package:jana_project/reusable%20code/buttons.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:jana_project/screens/registration/signin_page.dart';
import 'package:jana_project/screens/driver/driver_pickup.dart';

class DacceptPage extends StatefulWidget {
  const DacceptPage({Key? key}) : super(key: key);

  @override
  _DacceptPageState createState() => _DacceptPageState();
}

class _DacceptPageState extends State<DacceptPage> {
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
                            top:
                                BorderSide(color: Color(0xFFFA5FAE), width: 3)),
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Hey!Someone needs a ride',
                              style: TextStyle(
                                  color: Color(0xFFFA5FAE), fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/dimple.jpg', // Replace 'your_image.png' with your image file path
                                    width: 54,
                                    height: 58,
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Phoebe Marion B. Castro',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'CASH',
                                      style: TextStyle(
                                        color: Color(0xFFFA5FAE),
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right:
                                            16.0), // Adjust the padding as needed
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        '₱80.00',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right:
                                            20.0), // Adjust the padding as needed
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        '3km',
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 40),
                        Padding(
                          padding: EdgeInsets.only(
                              left:
                                  50.0), // Adjust the left padding value as needed
                          child: Row(
                            children: [
                              // Column for images and vertical line
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // Image for Pickup point
                                  Image.asset(
                                    'assets/Final State.png',
                                    width: 28,
                                    height: 40,
                                    fit: BoxFit.contain,
                                  ),
                                  // Vertical line
                                  Container(
                                    width: 2, // Width of the vertical line
                                    height: 45, // Height of the vertical line
                                    color: Colors
                                        .grey, // Color of the vertical line
                                  ),
                                  // Image for Drop off point
                                  Image.asset(
                                    'assets/Location.png', // Assuming the same image, change if necessary
                                    width: 28,
                                    height: 37,
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                              SizedBox(
                                  width:
                                      10), // Add some spacing between image column and text column
                              // Column for texts
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Pickup point section
                                    Row(
                                      children: [
                                        Text('Pickup point'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Rizal Park',
                                          style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 20),
                                    Divider(
                                      color: Color(0xD9D9D9D9),
                                    ),
                                    SizedBox(height: 20),
                                    // Drop off point section
                                    Row(
                                      children: [
                                        Text('Drop off point'),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'SM Naga City',
                                          style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(child: SizedBox()),
                            ],
                          ),
                        ),
                        SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Custom Button
                            CustomButton(
                              text: 'Accept',
                              color:
                                  Color(0xFFFA5FAE), // Set button color to pink
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DpickupPage()),
                                );
                              },
                            ),
                            // Spacer for some separation
                            SizedBox(width: 10),
                            // Text and Timer icon
                            Row(
                              children: [
                                Text(
                                  '30',
                                  style: TextStyle(
                                    fontSize:
                                        18, // Adjust the font size as needed
                                    fontWeight:
                                        FontWeight.bold, // Make the text bold
                                  ),
                                ),
                                SizedBox(
                                    width:
                                        5), // Add some space between the text and the icon
                                Icon(
                                  Icons.timer,
                                  color:
                                      Colors.grey, // Set the color of the icon
                                  size:
                                      24, // Adjust the size of the icon as needed
                                ),
                              ],
                            ),
                          ],
                        ),
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
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.history_edu),
                title: Text('Booking History'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
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
        ));
  }
}
