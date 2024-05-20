import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jana_project/reusable%20code/border_style.dart';
import 'package:jana_project/reusable%20code/buttons.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:jana_project/screens/passenger/passenger_looking.dart';
import 'package:jana_project/screens/profile/profile_email.dart';
import 'package:jana_project/screens/profile/profile_phone.dart';
import 'package:jana_project/screens/registration/signin_page.dart';
import 'package:card_loading/card_loading.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 56, 46, 184),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 56, 46, 184)),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          border: Border(
            top: BorderSide(
              //                    <--- top side
              color: Colors.black,
              width: 1.0,
            ),
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              child: Image.asset('assets/Ellipse 11.png'),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  height: 65,
                  width: 350,
                  child: Container(
                    decoration: BoxDecoration(
                      //DecorationImage
                      border: Border.all(
                          color: Colors.white,
                          width: 1.0,
                          style: BorderStyle.solid), //Border.all

                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                      //BorderRadius.only
                      /************************************/
                      /* The BoxShadow widget  is here */
                      /************************************/
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(248, 116, 116, 116),
                          blurRadius: 2.0,
                          spreadRadius: 1.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ],
                    ),
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 10,
                        right: 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('Name'),
                              Expanded(child: SizedBox()),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Miguel Toledana',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ), //BoxDecoration
                  ), //Container
                ), //SizedBox
              ), //Padding
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  height: 73,
                  width: 350,
                  child: Container(
                    decoration: BoxDecoration(
                      //DecorationImage
                      border: Border.all(
                          color: Colors.white,
                          width: 1.0,
                          style: BorderStyle.solid), //Border.all

                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                      //BorderRadius.only
                      /************************************/
                      /* The BoxShadow widget  is here */
                      /************************************/
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(248, 116, 116, 116),
                          blurRadius: 2.0,
                          spreadRadius: 1.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ],
                    ),
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 10,
                        right: 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('Email'),
                              Expanded(child: SizedBox()),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ProfileEmailPage()),
                                  );
                                },
                                icon: Icon(
                                  Icons.edit,
                                  color: Color.fromARGB(255, 56, 46, 184),
                                ),
                              )
                            ],
                          ),
                          Text(
                            'mt@gmail.com',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ), //BoxDecoration
                  ), //Container
                ), //SizedBox
              ), //Padding
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  height: 75,
                  width: 350,
                  child: Container(
                    decoration: BoxDecoration(
                      //DecorationImage
                      border: Border.all(
                          color: Colors.white,
                          width: 1.0,
                          style: BorderStyle.solid), //Border.all

                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                      //BorderRadius.only
                      /************************************/
                      /* The BoxShadow widget  is here */
                      /************************************/
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(248, 116, 116, 116),
                          blurRadius: 2.0,
                          spreadRadius: 1.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ],
                    ),
                    child: Container(
                      margin: EdgeInsets.only(
                        left: 10,
                        right: 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text('Mobile Number'),
                              Expanded(child: SizedBox()),
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ProfileNumberPage()),
                                  );
                                },
                                icon: Icon(
                                  Icons.edit,
                                  color: Color.fromARGB(255, 56, 46, 184),
                                ),
                              )
                            ],
                          ),
                          Text(
                            '09123456789',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ), //BoxDecoration
                  ), //Container
                ), //SizedBox
              ), //Padding
            ),
          ],
        ),
      ),
    );
  }
}
