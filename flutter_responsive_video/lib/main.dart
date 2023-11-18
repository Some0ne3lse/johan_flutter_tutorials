import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Layouts'),
      ),
      // body: width > 480 ? GridData() : ListData(),
      // body: orientation == Orientation.portrait ? ListData() : GridData(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 1200) {
            return GridData(
              aspectRatio: 8,
            );
          } else if (constraints.maxWidth > 800) {
            return GridData(aspectRatio: 4);
          } else {
            return ListData();
          }
        },
      ),
    );
  }
}

class ListData extends StatelessWidget {
  const ListData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.person),
          trailing: Icon(Icons.waves),
          title: Text('Person ${index + 1}'),
        );
      },
    );
  }
}

class GridData extends StatelessWidget {
  const GridData({
    super.key,
    required this.aspectRatio,
  });

  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: aspectRatio,
      children: List.generate(
        20,
        (index) {
          return ListTile(
            leading: Icon(Icons.person),
            trailing: Icon(Icons.waves),
            title: Text('Person ${index + 1}'),
          );
        },
      ),
    );
  }
}
