import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:jana_project/reusable%20code/border_style.dart';
import 'package:jana_project/reusable%20code/buttons.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:jana_project/screens/passenger/homepage_passenger.dart';
import 'package:jana_project/screens/passenger/passenger_looking.dart';
import 'package:jana_project/screens/registration/signin_page.dart';
import 'package:card_loading/card_loading.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class EmailVerifiedPage extends StatefulWidget {
  const EmailVerifiedPage({Key? key}) : super(key: key);

  @override
  _EmailVerifiedState createState() => _EmailVerifiedState();
}

class _EmailVerifiedState extends State<EmailVerifiedPage> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 56, 46, 184),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Color.fromARGB(255, 56, 46, 184)),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
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
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
              Expanded(child: SizedBox()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 110,
                    padding: EdgeInsets.all(15),
                    alignment: Alignment.center,
                    child: Image.asset('assets/Validation.png'),
                  )
                ],
              ),
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  child: Column(
                    children: [
                      Text(
                        "We've sent a verification link to",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        "msamonte2@gmail.com",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  )),
              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  child: Column(
                    children: [
                      Text(
                        "Please check the verification link in your inbox",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 15),
                      ),
                    ],
                  )),
              Expanded(child: SizedBox()),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                  color: Color.fromARGB(255, 255, 255, 255),
                  border: Border(
                    top: BorderSide(
                      //                    <--- top side
                      color: Color.fromARGB(100, 0, 0, 0),
                      width: 0.5,
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      alignment: Alignment.center,
                      child: Container(
                        height: 50,
                        width: 250,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PhomePage()),
                              );
                            },
                            child: Text(
                              'Check inbox',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffFA5FAE),
                            )),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 15,
                        right: 15,
                        bottom: 15,
                      ),
                      alignment: Alignment.center,
                      child: Container(
                        height: 50,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Resend verification email',
                              style: TextStyle(
                                  color: Color(0xffFA5FAE), fontSize: 20),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                            )),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
