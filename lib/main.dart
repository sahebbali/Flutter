import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: InkWellExample(),
    );
  }
}

class InkWellExample extends StatefulWidget {
  @override
  _InkWellExampleState createState() => _InkWellExampleState();
}

class _InkWellExampleState extends State<InkWellExample> {
  String _message = "Tap the box";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("InkWell Example")),
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              _message = "Box Tapped!";
            });
          },
          onDoubleTap: () {
            setState(() {
              _message = "Double Tapped!";
            });
          },
          onLongPress: () {
            setState(() {
              _message = "Long Pressed!";
            });
          },
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(12),
            ),
            alignment: Alignment.center,
            child: Text(
              _message,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
