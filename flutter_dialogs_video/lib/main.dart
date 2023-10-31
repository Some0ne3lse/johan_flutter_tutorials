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
  final snackBar = SnackBar(
    content: Text('Succesfully saved!'),
    backgroundColor: Colors.grey,
    duration: Duration(seconds: 2),
    action: SnackBarAction(
      onPressed: () {},
      label: 'Undo',
    ),
  );

  String delete = 'No choice made';
  String location = 'None selected yet';

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  String bottomSheetVal = 'Nothing selected';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text('Save'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: BorderSide(
                          color: Colors.red,
                          width: 2,
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            setState(() {
                              delete = 'You selected NO';
                            });
                            Navigator.pop(context);
                          },
                          child: Text('NO'),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              delete = 'You selected YES';
                            });
                            Navigator.pop(context);
                          },
                          child: Text('YES'),
                        ),
                      ],
                      title: Text('Delete entry 12345'),
                      content: Text(
                          'Are you sure that you want to delete the entry?'),
                    );
                  },
                );
              },
              child: Text('Delete'),
            ),
            Text(delete),
            ElevatedButton(
              onPressed: () async {
                final String loc = await showDialog(
                  context: context,
                  builder: (context) {
                    return SimpleDialog(
                      title: Text('Chose your location'),
                      children: [
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context, 'South Africa');
                          },
                          child: Text('South Africa'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context, 'America');
                          },
                          child: Text('America'),
                        ),
                        SimpleDialogOption(
                          onPressed: () {
                            Navigator.pop(context, 'Brazil');
                          },
                          child: Text('Brazil'),
                        ),
                      ],
                    );
                  },
                );
                setState(() {
                  location = loc;
                });
              },
              child: Text('Choose Location'),
            ),
            Text(location),
            ElevatedButton(
              onPressed: () {
                scaffoldKey.currentState?.showBottomSheet(
                  (context) {
                    return Container(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: [
                              Text(
                                'Are you sure you want to delete?',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                              ),
                              ButtonBar(
                                alignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                        bottomSheetVal = 'YES';
                                      });
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'YES',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                        bottomSheetVal = 'NO';
                                      });
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'NO',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      height: 120,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                    );
                  },
                );
              },
              child: Text('Bottom Sheet'),
            ),
            Text(bottomSheetVal),
          ],
        ),
      ),
    );
  }
}
