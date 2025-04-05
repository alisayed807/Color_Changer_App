import 'package:flutter/material.dart';

class AlignmentInfo extends StatelessWidget {
  final String directionName;

  const AlignmentInfo({Key? key, required this.directionName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Alignment: $directionName',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
