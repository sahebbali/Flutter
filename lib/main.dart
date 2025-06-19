import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 👈 Add this line
      home: Scaffold(
        appBar: AppBar(title: Text('Basic Widgets')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hello Flutter!', style: TextStyle(fontSize: 24)),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: Text('Click Me')),
              Padding(
                padding: EdgeInsets.all(16),
                child: TextField(
                  decoration: InputDecoration(labelText: 'Enter your name'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
