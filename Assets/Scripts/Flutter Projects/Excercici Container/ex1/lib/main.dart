import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

//AASSAaaaAAaAaAaAaaAAaAaAaaAAaAAaaAaAAAAaaAAAAaaAAAAAAAaaaaaAaAAaAaAAAAaaaAAAaAAAaAaAaaAaAAAAAAaaaAAaAaAAAaaaAAaa
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 226, 226, 226),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 226, 226, 226),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 160, 160, 160), 
                  offset: Offset(25, 20), 
                  blurRadius: 50,
                ),
                BoxShadow(
                  color: const Color.fromARGB(255, 226, 226, 226), 
                  offset: Offset(-40, -20), 
                  blurRadius: 50,
                ),
              ],
              //shape: BoxShape.circle
            ),
          ),
        ),
      ),
    );
  }
}