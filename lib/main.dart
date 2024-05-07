/* Authored by: Errol John Celis
Company: APEX-Mire
Project: JANA
Feature: [JANA-001] Splash
Description: The first face of the app
 */

import 'package:flutter/material.dart';
import 'package:jana_project/screens/registration/signin_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JANA',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        colorScheme: const ColorScheme.light(background: Color(0xFFE6E7E8)),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
        ),
      ),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() {
    Future.delayed(
      Duration(seconds: 2),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => decideScreen()),
        );
      },
    );
  }

  Widget decideScreen() {
    //other logic when the database is set
    //return the splashpage
    return SignInPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/map_splash.png',
              fit: BoxFit.cover,
              height: 220,
              width: 80,
            ),
          ),
// Centered content
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Logo Image
                Image.asset(
                  'assets/JANA LOGO.png',
                  width: 100,
                  height: 100,
                ),
                SizedBox(height: 8),
                // Text
                Text(
                  'JANA',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff002247),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
