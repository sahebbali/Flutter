import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: GestureExample());
  }
}

class GestureExample extends StatefulWidget {
  @override
  _GestureExampleState createState() => _GestureExampleState();
}

class _GestureExampleState extends State<GestureExample> {
  String _message = 'Tap the container';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GestureDetector Example")),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _message = "Container Tapped!";
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
            color: Colors.amber,
            alignment: Alignment.center,
            child: Text(_message, textAlign: TextAlign.center),
          ),
        ),
      ),
    );
  }
}
