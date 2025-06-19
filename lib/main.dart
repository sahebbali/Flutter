import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('Flexible Example')),
        body: Center(
          child: Row(
            children: [
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Container(
                  height: 100,
                  color: Colors.red,
                  child: Center(child: Text('Tight')),
                ),
              ),
              Flexible(
                flex: 2,
                fit: FlexFit.loose, // Default
                child: Container(
                  height: 100,
                  color: Colors.green,
                  child: Center(child: Text('Loose')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
