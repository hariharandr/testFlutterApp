import 'package:flutter/material.dart';
import 'dart:math';

class ListViewSeperatorDemo extends StatefulWidget {
  const ListViewSeperatorDemo({super.key});

  @override
  State<ListViewSeperatorDemo> createState() => _ListViewSeperatorDemoState();
}

ownRandomColorGen() {
  return Colors.primaries[Random().nextInt(Colors.primaries.length)];
}

class _ListViewSeperatorDemoState extends State<ListViewSeperatorDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Seprated ListView',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          // scrollDirection: Axis.horizontal,
          itemCount: 10,
          separatorBuilder: (context, index) => const Divider(
            color: Colors.black,
          ),
          itemBuilder: (_, index) {
            return Expanded(
              child: Container(
                  color: ownRandomColorGen(), width: 100, height: 100),
            );
          },
        ),
      ),
    );
  }
}
