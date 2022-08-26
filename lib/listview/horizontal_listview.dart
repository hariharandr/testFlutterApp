import 'package:flutter/material.dart';

class HorizontalListViewDemo extends StatelessWidget {
  const HorizontalListViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Horizontal List';

    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 20.0),
        height: 140.0,
        child: ListView(
          // This next line does the trick.
          scrollDirection: Axis.horizontal,

          children: <Widget>[
            Expanded(
              child: Container(
                width: 160.0,
                color: Colors.red,
              ),
            ),
            Container(
              width: 160.0,
              color: Colors.blue,
            ),
            Container(
              width: 160.0,
              color: Colors.green,
            ),
            Container(
              width: 160.0,
              color: Colors.yellow,
            ),
            Container(
              width: 160.0,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
