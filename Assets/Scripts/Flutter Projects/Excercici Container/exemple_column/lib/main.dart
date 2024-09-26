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
        children: [
          Expanded(
            flex: 7,
            child: Container(
              height: 100,
              width: 1000,
              color: const Color.fromARGB(255, 7, 176, 255),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 10,
              width: 1000,
              color: const Color.fromARGB(255, 223, 235, 121),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 25,
              width: 1000,
              color: const Color.fromARGB(255, 232, 235, 55),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: 35,
              width: 1000,
              color: const Color.fromARGB(255, 240, 219, 36),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              height: 10,
              width: 1000,
              color: const Color.fromARGB(255, 245, 241, 17),
            ),
          ),
        ],
      )),
    );
  }
}
