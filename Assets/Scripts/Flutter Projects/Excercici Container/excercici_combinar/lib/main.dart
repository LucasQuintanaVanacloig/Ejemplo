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
        backgroundColor: const Color.fromARGB(255, 223, 186, 230),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            alignment: Alignment.center,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 226, 226, 226),
            ),
            child: const Padding(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Títol", style: TextStyle(fontSize: 20),),
                      SizedBox(height: 10),
                      Text("Subtitol", style: TextStyle(fontSize: 13),),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Votacions")
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
