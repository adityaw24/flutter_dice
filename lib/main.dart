import 'package:dice/widgets/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: GradientContainer(
          startColor: Colors.indigoAccent, endColor: Colors.lightBlueAccent),
    ),
  ));
}
