import 'package:flutter/material.dart';
import 'package:leda/utils/constants.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      '.leda',
      style: TextStyle(
          color: logoColor,
          fontFamily: 'Reross',
          fontSize: 25,
          fontWeight: FontWeight.w400),
    );
  }
}
