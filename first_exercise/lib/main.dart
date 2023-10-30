import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(top: 100.0),
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage(
                        'assets/images/profile.jpg',
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 50,
                  child: Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 50,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ],
            ),
            ListTile(
              title: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'John Rambo',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              subtitle: Text(
                'john@gmail.com',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.yellow,
                ),
                margin: EdgeInsets.only(left: 50, right: 50),
                child: ListTile(
                  onTap: () {
                    print('Tapped');
                  },
                  title: Text(
                    'Upgrade to Premium',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey,
                ),
                margin: EdgeInsets.only(left: 50, right: 50),
                child: ListTile(
                  onTap: () {
                    print('Tapped');
                  },
                  leading: Icon(
                    Icons.shopping_bag,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Your order history',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey,
                ),
                margin: EdgeInsets.only(left: 50, right: 50),
                child: ListTile(
                  onTap: () {
                    print('Tapped');
                  },
                  leading: Icon(
                    Icons.question_mark_outlined,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Help and Support',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey,
                ),
                margin: EdgeInsets.only(left: 50, right: 50),
                child: ListTile(
                  onTap: () {
                    print('Tapped');
                  },
                  leading: Icon(
                    Icons.card_giftcard,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Load gift voucher',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey,
                ),
                margin: EdgeInsets.only(left: 50, right: 50),
                child: ListTile(
                  onTap: () {
                    print('Tapped');
                  },
                  leading: Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
