import 'package:flutter/material.dart';
import 'package:first_project/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.cyan, Colors.indigo],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    ),
  );
}
