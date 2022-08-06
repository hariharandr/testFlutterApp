import 'package:flutter/material.dart';

class ColumnDemo extends StatefulWidget {
  const ColumnDemo({super.key});

  @override
  State<ColumnDemo> createState() => _ColumnDemoState();
}

class _ColumnDemoState extends State<ColumnDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'COLUMN',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset('assets/image1.jpg'),
              ),
            ),
            Expanded(
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset('assets/image2.jpg'),
              ),
            ),
            Expanded(
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset('assets/image3.jpg'),
              ),
            ),
            Expanded(
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset('assets/image4.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
