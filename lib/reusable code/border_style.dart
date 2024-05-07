import 'package:flutter/material.dart';

class AppBorderStyles {
  static OutlineInputBorder focusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(15.0),
    borderSide: const BorderSide(
      color: Color(0xffFA5FAE),
      width: 2.0,
    ),
  );

  static OutlineInputBorder enabledBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(15.0),
    borderSide: const BorderSide(
      color: Color(0xff72728b),
      width: 1.0,
    ),
  );

}
