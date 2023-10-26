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
            alignment: Alignment.center,
            height: 360,
            width: 360,
            decoration: BoxDecoration(
              color: Colors.red[700],
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Hello',
              style: TextStyle(fontSize: 60, color: Colors.white),
            ),
          ),
        ),
      ),
    ),
  );
}
