import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stateless and Stateful'),
        ),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Welcome to the app',
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 20,
              ),
              Buttons(text: 'Hello World'),
            ],
          ),
        ),
      ),
    );
  }
}

class Buttons extends StatefulWidget {
  const Buttons({required this.text});
  final String text;
  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  var maleCounter = 0;
  var femaleCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Nr of Males: $maleCounter',
            style: const TextStyle(fontSize: 20),
          ),
          Text(
            'Nr of Females: $femaleCounter',
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          MyOwnButton(
              onTap: () {
                setState(() {
                  maleCounter++;
                });
                print(widget.text);
              },
              text: 'Male +'),
          const SizedBox(
            height: 20,
          ),
          MyOwnButton(
              onTap: () {
                setState(() {
                  femaleCounter++;
                });
              },
              text: 'Female +'),
        ],
      ),
    );
  }

  // MaterialButton buildMaterialButton() {
  //   return MaterialButton(
  //     onPressed: () {
  //       setState(() {
  //         femaleCounter++;
  //       });
  //     },
  //     height: 30,
  //     minWidth: 200,
  //     color: Colors.blue,
  //     elevation: 10,
  //     child: const Text(
  //       'Female +',
  //       style: TextStyle(fontSize: 30, color: Colors.white),
  //     ),
  //   );
  // }
}

class MyOwnButton extends StatelessWidget {
  const MyOwnButton({required this.onTap, required this.text});
  final VoidCallback onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      height: 50,
      minWidth: 200,
      color: Colors.blue,
      elevation: 10,
      child: Text(
        text,
        style: const TextStyle(fontSize: 30, color: Colors.white),
      ),
    );
  }
}
