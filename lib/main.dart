import 'package:assignment1_alisayed_app/screens/color_changer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ColorChangerApp());
}

class ColorChangerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Changer',
      home: ColorChangerScreen(),
    );
  }
}
