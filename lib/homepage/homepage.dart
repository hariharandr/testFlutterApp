import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: ListView(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/column');
              },
              child: const Text('Column')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/grid');
              },
              child: const Text('GridView')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/row');
              },
              child: const Text('Row')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/animatedlist');
              },
              child: const Text('AnimatedListView')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/diftypelist');
              },
              child: const Text('DiffTypeItemsInLists')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/horizlist');
              },
              child: const Text('HorizontalListView')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/listbuild');
              },
              child: const Text('ListViewBuilder')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/listseperate');
              },
              child: const Text('ListViewSeperator')),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/reorderlist');
              },
              child: const Text('ReorderableLists')),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/singlechildlistview');
            },
            child: const Text('SingleChildScrollView'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/pageview');
            },
            child: const Text('Page View Demo'),
          ),
        ],
      ),
    );
  }
}
