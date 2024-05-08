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
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() {
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => RideRequestPage()),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text('commuter page'), Text('with delay since empty pa')],
      ),
    );
  }
}
