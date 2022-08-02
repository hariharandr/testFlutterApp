import 'package:flutter/material.dart';

class ColumnApp extends StatefulWidget {
  const ColumnApp({super.key});

  @override
  State<ColumnApp> createState() => _ColumnAppState();
}

class _ColumnAppState extends State<ColumnApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basics Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'COLUMN',
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/image1.jpg'),
              Image.asset('assets/image2.jpg'),
              Image.asset('assets/image3.jpg'),
              Expanded(
                flex: 2,
                child: Image.asset('assets/image4.jpg'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
