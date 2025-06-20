import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Display Widgets Example',
      home: DisplayWidgetsScreen(),
    );
  }
}

class DisplayWidgetsScreen extends StatefulWidget {
  @override
  _DisplayWidgetsScreenState createState() => _DisplayWidgetsScreenState();
}

class _DisplayWidgetsScreenState extends State<DisplayWidgetsScreen> {
  String message = "Tap something";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Display Widgets')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),

            /// Stack Example
            Text(
              '🔲 Stack Widget',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(width: 150, height: 150, color: Colors.blue),
                Container(width: 100, height: 100, color: Colors.green),
                Text(
                  "Top",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),

            SizedBox(height: 30),

            /// Wrap Example
            Text(
              '🔁 Wrap Widget',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: List.generate(8, (index) {
                return Chip(label: Text('Item $index'));
              }),
            ),

            SizedBox(height: 30),

            /// GestureDetector Example
            Text(
              '👆 GestureDetector',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            GestureDetector(
              onTap: () => setState(() => message = "GestureDetector Tapped!"),
              onDoubleTap: () => setState(() => message = "Double Tapped!"),
              onLongPress: () => setState(() => message = "Long Pressed!"),
              child: Container(
                margin: EdgeInsets.all(10),
                width: 200,
                height: 100,
                color: Colors.amber,
                alignment: Alignment.center,
                child: Text(message, textAlign: TextAlign.center),
              ),
            ),

            SizedBox(height: 30),

            /// InkWell Example
            Text('💦 InkWell', style: TextStyle(fontWeight: FontWeight.bold)),
            Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () => setState(() => message = "InkWell Tapped!"),
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    'Tap Me (InkWell)',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),

            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
