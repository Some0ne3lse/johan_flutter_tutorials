import 'package:bottom_navigation_video/defaults/defaults.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var indexClicked = 0;

  final pages = [
    Center(
      child: Text('Inbox'),
    ),
    Center(
      child: Text('Starred'),
    ),
    Center(
      child: Text('Sent'),
    ),
    Center(
      child: Text('Drafts'),
    ),
    Center(
      child: Text('Trash'),
    ),
    Center(
      child: Text('Spam'),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation'),
      ),
      body: pages[indexClicked],
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.blue[100],
        type: BottomNavigationBarType.shifting,
        // change to fixed and comment in background color for what you prefer
        elevation: 60,
        selectedItemColor: Defaults.bottomNavItemSelectedColor,
        unselectedItemColor: Defaults.bottomNavItemColor,
        currentIndex: indexClicked,
        onTap: (value) {
          setState(() {
            indexClicked = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(
              Defaults.bottomNavItemIcon[0],
            ),
            label: Defaults.bottomNavItemText[0],
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.purple,
            icon: Icon(
              Defaults.bottomNavItemIcon[1],
            ),
            label: Defaults.bottomNavItemText[1],
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.deepOrange,
            icon: Icon(
              Defaults.bottomNavItemIcon[2],
            ),
            label: Defaults.bottomNavItemText[2],
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blue[100],
            icon: Icon(
              Defaults.bottomNavItemIcon[3],
            ),
            label: Defaults.bottomNavItemText[3],
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(
              Defaults.bottomNavItemIcon[4],
            ),
            label: Defaults.bottomNavItemText[4],
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.indigo,
            icon: Icon(
              Defaults.bottomNavItemIcon[5],
            ),
            label: Defaults.bottomNavItemText[5],
          ),
        ],
      ),
    );
  }
}
