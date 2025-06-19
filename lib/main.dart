import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Container & Row Example')),
        body: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Align items in center horizontally
            children: [
              Container(
                width: 80,
                height: 80,
                color: Colors.red,
                child: Center(
                  child: Text('Box 1', style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(width: 10, height: 10), // space between boxes
              Container(
                width: 80,
                height: 80,
                color: Colors.green,
                child: Center(
                  child: Text('Box 2', style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(width: 10, height: 10),
              Container(
                width: 80,
                height: 80,
                color: Colors.blue,
                child: Center(
                  child: Text('Box 3', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
