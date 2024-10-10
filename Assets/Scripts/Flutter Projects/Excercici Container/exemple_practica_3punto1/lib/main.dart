import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              color: Colors.deepPurple,
              height: 200,
              width: 100,
            ),
            Container(
              color: Colors.amber,
              height: 200,
              width: 100,
            ),
            Container(
              color: Colors.deepOrange,
              height: 200,
              width: 100,
            ),
            Container(
              color: const Color.fromARGB(255, 63, 23, 11),
              height: 200,
              width: 100,
            ),
            Container(
              color: const Color.fromARGB(255, 124, 63, 45),
              height: 200,
              width: 100,
            ),
          ],
        ),
      ),
    );
  }
}

