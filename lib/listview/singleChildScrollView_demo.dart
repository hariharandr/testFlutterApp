import 'package:flutter/material.dart';

class SingleChildScrollViewDemo extends StatelessWidget {
  const SingleChildScrollViewDemo({super.key});

  @override
  Widget build(BuildContext context) {
    final ScrollController _scrollcontroller = ScrollController();
    const title = 'Single Child Scroll View';

    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Scrollbar(
        thumbVisibility: true,
        controller: _scrollcontroller,
        child: SingleChildScrollView(
          controller: _scrollcontroller,
          // scrollDirection: Axis.horizontal,
          child: Container(
            height: 10000.0,
            width: MediaQuery.of(context).size.width,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
