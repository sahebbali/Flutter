import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Wrap Example")),
        body: Center(
          child: Wrap(
            spacing: 10, // space between items horizontally
            runSpacing: 10, // space between lines vertically
            children: List.generate(10, (index) {
              return Chip(
                label: Text('Item $index'),
                backgroundColor: Colors.blue.shade100,
              );
            }),
          ),
        ),
      ),
    );
  }
}
