import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
            ),
            Positioned(
              top: 200,
              left: 70,
              child: Icon(
                Icons.check,
                color: Colors.white,
                size: 50,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
