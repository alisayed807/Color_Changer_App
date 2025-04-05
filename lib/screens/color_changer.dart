import 'dart:math';
import 'package:flutter/material.dart';
import '../widgets/color_info.dart';
import '../widgets/alignment_info.dart';

class ColorChangerScreen extends StatefulWidget {
  @override
  _ColorChangerScreenState createState() => _ColorChangerScreenState();
}

class _ColorChangerScreenState extends State<ColorChangerScreen> {
  Color startColor = Colors.blue;
  Color endColor = Colors.red;
  int red = 0, green = 0, blue = 255;
  int directionIndex = 0;

  // Gradient directions with corrected order
  final List<List<Alignment>> gradientDirections = [
    [Alignment.centerLeft, Alignment.centerRight], // Horizontal
    [Alignment.topCenter, Alignment.bottomCenter],    // Vertical
    [Alignment.topLeft, Alignment.bottomRight],    // Diagonal TopLeft to BottomRight
    [Alignment.topRight, Alignment.bottomLeft],    // Diagonal TopRight to BottomLeft
  ];

  // Direction names that match the gradientDirections order
  final List<String> directionNames = [
    "Vertical",
    "Horizontal",
    "Left Right",
    "Right Left"
  ];

  Color getRandomColor() {
    return Color.fromRGBO(
      Random().nextInt(256),
      Random().nextInt(256),
      Random().nextInt(256),
      1,
    );
  }

  void changeColor() {
    setState(() {
      startColor = getRandomColor();
      endColor = getRandomColor();
      red = startColor.red;
      green = startColor.green;
      blue = startColor.blue;
    });
  }

  void changeDirection() {
    setState(() {
      directionIndex = (directionIndex + 1) % gradientDirections.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: gradientDirections[directionIndex][0],
            end: gradientDirections[directionIndex][1],
            colors: [startColor, endColor],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: changeColor,
                child: Text('Change Color'),
              ),
              SizedBox(height: 10),
              ColorInfo(red: red, green: green, blue: blue),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: changeDirection,
                child: Text('Change Direction'),
              ),
              SizedBox(height: 10),
              AlignmentInfo(directionName: directionNames[directionIndex]),
            ],
          ),
        ),
      ),
    );
  }
}