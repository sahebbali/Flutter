import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Demo',
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Web app bar')),
        body: Center(
          child: Text(
            'Hello, Flutter Web! hello saheb how are you,where are you from',
            style: TextStyle(fontSize: 24, color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
