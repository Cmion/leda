import 'dart:math';

import 'package:flutter/material.dart';

String capitalize(String value) {
  if (value != null) {
    String firstChar = value[0].toUpperCase();
    String otherChar = value.substring(1);
    return '$firstChar$otherChar';
  }
  return null;
}

String capitalizeWords(String sentence) {
  if (sentence != null) {
    List<String> splitSentence = sentence.split('_');
    return splitSentence.map((word) => capitalize(word)).toList().join(' ');
  }
  return null;
}

String humanize(String value) {
  List<String> splitValue = value.split('_');
  return capitalize(splitValue.join(' '));
}

double screenHeight(BuildContext context,
    {double percentage = 1, double sub = 0, double add = 0}) {
  double size = MediaQuery.of(context).size.height;
  return size * percentage.clamp(0, 1) - sub + add;
}

double screenWidth(BuildContext context,
    {double percentage = 1, double sub = 0, double add = 0}) {
  double size = MediaQuery.of(context).size.width;
  return size * percentage.clamp(0, 1) - sub + add;
}

double toRadian(double degree) => degree * pi / 180;
double toDegree(double rad) => rad * 180 / pi;
