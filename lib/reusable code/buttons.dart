import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final double width; // New property to specify the button width
  final Color borderColor; // New property for border color
  final Color textColor; // New property for text color
  final VoidCallback onPressed; // Callback function for button press

  const CustomButton({
    Key? key,
    required this.text,
    required this.color,
    required this.onPressed, // Pass the callback function
    this.width = 200, // Default to 200 width
    this.borderColor = const Color(0xFFFA5FAE), // Default border color to pink
    this.textColor = Colors.white, // Default text color to white
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width, // Set the width of the button
      child: ElevatedButton(
        onPressed: onPressed, // Use the passed callback function
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            color,
          ),
          foregroundColor: MaterialStateProperty.all<Color>(
            textColor, // Set text color
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(color: borderColor), // Set border color
            ),
          ),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(vertical: 18, horizontal: 50),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor, // Set text color
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

