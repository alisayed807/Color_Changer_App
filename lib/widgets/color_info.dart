import 'package:flutter/material.dart';

class ColorInfo extends StatelessWidget {
  final int red;
  final int green;
  final int blue;

  const ColorInfo({
    Key? key,
    required this.red,
    required this.green,
    required this.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Red: $red  Green: $green  Blue: $blue',
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
