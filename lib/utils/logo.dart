import 'package:flutter/material.dart';
import 'package:leda/utils/constants.dart';

class Logo extends StatelessWidget {
  final Color color;

  const Logo({Key key, this.color = logoColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      '.leda',
      style: TextStyle(
          color: color,
          fontFamily: 'Reross',
          fontSize: 25,
          fontWeight: FontWeight.w400),
    );
  }
}
