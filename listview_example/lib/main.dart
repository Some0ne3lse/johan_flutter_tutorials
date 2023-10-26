import 'package:flutter/material.dart';

void main() {
  var widgets = [
    ListTile(
      onTap: () {
        print('Tapped');
      },
      leading: Text(
        'J',
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w800,
        ),
      ),
      title: Text(
        'John Rambo',
      ),
      subtitle: Text(
        'Never runs out of bullets',
      ),
      trailing: Text(
        'Invincible',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
    ListTile(
      leading: Text(
        'P',
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w800,
        ),
      ),
      title: Text(
        'Peter Pollock',
      ),
      subtitle: Text(
        'Bowler',
      ),
      trailing: Text(
        '50 wickets',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  ];
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView in Flutter'),
        ),
        body: Column(
          children: [
            Container(
                height: 200,
                child: ListView.builder(
                  itemCount: widgets.length,
                  itemBuilder: (context, index) {
                    return widgets[index];
                  },
                )),
            Text(
              'Hello World',
              style: TextStyle(fontSize: 70, color: Colors.black),
            )
          ],
        ),
      ),
    ),
  );
}
