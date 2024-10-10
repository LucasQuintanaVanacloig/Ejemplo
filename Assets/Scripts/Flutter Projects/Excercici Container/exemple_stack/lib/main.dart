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
        body: Center(
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                height: 300,
                color: Colors.amber[300],
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.amber[100],
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.amber[50],  
              ),
            ],
          ),
        ),
      ),
    );
  }
}
