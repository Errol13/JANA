import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final double width; // New property to specify the button width

  const CustomButton({
    Key? key,
    required this.text,
    required this.color,
    this.width = 200, // Default to 200 width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width, // Set the width of the button
      child: ElevatedButton(
        onPressed: () {
          // Perform action
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            color,
          ),
          foregroundColor: MaterialStateProperty.all<Color>(
            Colors.white,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(vertical: 18, horizontal: 50),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18, // Adjust the font size as needed
          ),
        ),
      ),
    );
  }
}
