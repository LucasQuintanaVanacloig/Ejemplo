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
          child: ClipRRect(
            borderRadius: BorderRadius.circular(200),
            child: Container(
              width: 200,
              height: 200,
              color: Colors.lightBlue,
              child: Image.asset(
              "lib/imatges/img.png",
              fit: BoxFit.fill,
              ),
              
            ),
          ),
        ),
      ),
    );
  }
}
