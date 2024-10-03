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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Hola",
                      style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                    ),
                  ),
                  color: Colors.amber,
                ),
                Container(
                  child: Icon(
                    Icons.fireplace,
                    size: 50,
                    color: Colors.deepPurple,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: Text("Hola"),
                ),
                Container(
                  child: Text("HOLA2"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}