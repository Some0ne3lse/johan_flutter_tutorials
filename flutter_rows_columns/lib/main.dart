import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            color: Colors.blue,
            height: 300,
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.red,
                  height: 40,
                  width: 80,
                ),
                Container(
                  color: Colors.purple,
                  height: 40,
                  width: 80,
                ),
                Container(
                  color: Colors.orange,
                  height: 40,
                  width: 80,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  textBaseline: TextBaseline.alphabetic,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    Text(
                      'US\$',
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      '......................',
                    ),
                    Text(
                      '\$3000',
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
