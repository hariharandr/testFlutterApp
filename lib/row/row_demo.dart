import 'package:flutter/material.dart';

class RowApp extends StatefulWidget {
  const RowApp({super.key});

  @override
  State<RowApp> createState() => _RowAppState();
}

class _RowAppState extends State<RowApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basics Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'ROW',
          ),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
