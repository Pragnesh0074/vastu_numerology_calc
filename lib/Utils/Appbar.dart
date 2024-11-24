import 'package:flutter/material.dart';
import 'package:vastu_numerology_calc/Utils/String.dart';

AppBar appBar() {
  return AppBar(
    backgroundColor: Colors.blueAccent,
    foregroundColor: Colors.white,
    title: Text(Strings.appName),
  );
}
