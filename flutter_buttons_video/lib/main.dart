import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String text = 'Nothing clicked';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        onPressed: () {
          setState(() {
            text = 'FAB clicked';
          });
        },
        icon: Icon(
          Icons.add,
          color: Colors.white,
        ),
        label: Text('Add'),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.purple,
                onPrimary: Colors.white,
                elevation: 40,
              ),
              onPressed: () {
                setState(() {
                  text = 'Elevated button clicked';
                });
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.save),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Save'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              style: TextButton.styleFrom(),
              onPressed: () {
                setState(
                  () {
                    text = 'TextButton clicked';
                  },
                );
              },
              child: Text('OK'),
            ),
            SizedBox(
              height: 30,
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    setState(
                      () {
                        text = 'ButtonBar clicked';
                      },
                    );
                  },
                  child: Text('NO'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(
                      () {
                        text = 'ElevatedButton in ButtonBar clicked';
                      },
                    );
                  },
                  child: Text('YES'),
                ),
              ],
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.purple,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.deepOrange,
              child: Text(
                'Enter',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                setState(
                  () {
                    text = 'MaterialButton Clicked';
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
