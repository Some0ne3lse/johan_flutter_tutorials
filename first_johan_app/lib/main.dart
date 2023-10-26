import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Welcome',
          ),
        ),
        body: Center(
          child: Container(
            width: 360,
            color: Colors.red[700],
            child: Text(
              'Bio miðar',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 60, color: Colors.white),
            ),
          ),
        ),
      ),
    ),
  );
}
