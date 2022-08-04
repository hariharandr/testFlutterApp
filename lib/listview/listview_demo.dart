import 'package:flutter/material.dart';
import 'dart:math';

class ListViewApp extends StatefulWidget {
  const ListViewApp({super.key});

  @override
  State<ListViewApp> createState() => _ListViewAppState();
}

randomColor() {
  return Colors.primaries[Random().nextInt(Colors.primaries.length)];
}

class _ListViewAppState extends State<ListViewApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basics Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Infinite ListView',
          ),
        ),
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (_, index) {
            return Container(color: randomColor(), width: 500, height: 500);
          },
        ),
      ),
    );
  }
}
