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
  String name = 'Name to be displayed here:';

  TextEditingController nameController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // nameController.text = 'Brazil';
  }

  @override // ALWAYS DISPOSE WHEN USING CONTROLLER
  void dispose() {
    nameController.dispose();
    numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField in Flutter'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppTextField(
                  controller: nameController,
                  hint: 'Please enter your name',
                  keyboardType: TextInputType.text,
                ),
                SizedBox(
                  height: 20,
                ),
                AppTextField(
                  controller: numberController,
                  hint: 'Please enter your number',
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      name =
                          '${nameController.text} - ${numberController.text}';
                    });
                  },
                  child: Text('Submit'),
                ),
                Text(name),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.controller,
    required this.hint,
    required this.keyboardType,
  });

  final TextEditingController controller;
  final String hint;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      textAlign: TextAlign.center,
      keyboardType: keyboardType,
      cursorColor: Colors.red,
      style: TextStyle(color: Colors.red),
      // obscureText: true,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.green,
          ),
        ),
        border: OutlineInputBorder(),
        labelText: hint,
        labelStyle: TextStyle(
          color: Colors.blue,
        ),
      ),
    );
  }
}
