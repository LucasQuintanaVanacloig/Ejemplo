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
        body: Center(
          child: Container(
            alignment: const Alignment(0, 0.5),
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.pink,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black, width: 3.0),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 182, 155, 164),
                  offset: Offset(-4, 4),
                  blurRadius: 100,
                  spreadRadius: 2,
                )
              ],
            ),
            child: const Text(
              "Alberto",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
