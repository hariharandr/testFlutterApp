import 'package:flutter/material.dart';
import 'dart:math';

class ListViewBuilderDemo extends StatefulWidget {
  const ListViewBuilderDemo({super.key});

  @override
  State<ListViewBuilderDemo> createState() => _ListViewBuilderDemoState();
}

randomColor() {
  return Colors.primaries[Random().nextInt(Colors.primaries.length)];
}

class _ListViewBuilderDemoState extends State<ListViewBuilderDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
