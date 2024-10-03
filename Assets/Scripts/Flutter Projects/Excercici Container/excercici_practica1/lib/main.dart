import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: 100,
                color: Colors.deepPurple[300],
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.deepPurple[200],
            ),
            Expanded(
              flex: 5,
              child: Container(
                height: 100,
                color: Colors.deepPurple[100],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
