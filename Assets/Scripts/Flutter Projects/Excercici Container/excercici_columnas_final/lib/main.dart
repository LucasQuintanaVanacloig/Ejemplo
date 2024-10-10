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
        backgroundColor: Colors.blue[200],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Expanded(
                  flex : 3,
                  child: Container(
                    height: 100,
                  ),
                ),
                Expanded(
                  flex : 1,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex : 1,
                  child: Container(
                  height: 100,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 200,
                    height: 100,
                    color: Colors.grey[100],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 100,
                  ),
                ),
                Expanded(
                  flex : 3,
                  child: Container(
                    width: 300,
                    height: 100,
                    color: Colors.grey[300],
                  ),
                ),
              ],
            ),
            Container(
              height: 100,
              color: Colors.grey[400],
            ),
          ],
        ),
      ),
    );
  }
}
