import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Horizontal List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: SingleChildScrollView(
            // This next line does the trick.
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  width: 12,
                  color: Colors.red,
                ),
                Container(
                  width: 12,
                  color: Colors.blue,
                ),
                Container(
                  width: 12,
                  color: Colors.green,
                ),
                Container(
                  width: 12,
                  color: Colors.yellow,
                ),
                Container(
                  width: 12,
                  color: Colors.orange,
                ),
              ],
            )),
      ),
    );
  }
}
