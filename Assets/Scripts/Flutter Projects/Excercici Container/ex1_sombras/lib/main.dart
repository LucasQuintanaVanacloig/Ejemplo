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
        backgroundColor: Colors.grey[300],
        body: Center(
          child: Container(
            height: 250, 
            width: 250, 
            decoration: BoxDecoration(
              color : Colors.grey[300],
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade500,
                  offset: const Offset(4,4),
                  blurRadius: 15,
                  spreadRadius: 1,
                ),
                const BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4, -4),
                  blurRadius: 15,
                  spreadRadius: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
