import 'package:flutter/material.dart';

class AnimatedListViewDemo extends StatelessWidget {
  const AnimatedListViewDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated List View'),
      ),
      body: const SliceAnimatedList(),
    );
  }
}

class SliceAnimatedList extends StatefulWidget {
  const SliceAnimatedList({Key? key}) : super(key: key);

  @override
  _SliceAnimatedListState createState() => _SliceAnimatedListState();
}

class _SliceAnimatedListState extends State<SliceAnimatedList> {
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  List<int> _items = [];
  int counter = 0;

  Widget slideIt(BuildContext context, int index, animation) {
    int item = _items[index];
    TextStyle? textStyle = Theme.of(context).textTheme.headline4;
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(-1, 0),
        end: const Offset(0, 0),
      ).animate(animation),
      child: SizedBox(
        height: 80.0,
        child: Card(
          color: Colors.primaries[item % Colors.primaries.length],
          child: Center(
            child: Text('Item $item', style: textStyle),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          child: Container(
            height: double.infinity,
            child: AnimatedList(
              key: listKey,
              initialItemCount: _items.length,
              itemBuilder: (context, index, animation) {
                return slideIt(context, index, animation);
              },
            ),
          ),
        ),
        Container(
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 47, 142, 219)),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  setState(() {
                    listKey.currentState?.insertItem(0,
                        duration: const Duration(milliseconds: 500));
                    _items = []
                      ..add(counter++)
                      ..addAll(_items);
                  });
                },
                child: const Text(
                  "Add item to first",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              TextButton(
                onPressed: () {
                  if (_items.length <= 1) return;
                  listKey.currentState?.removeItem(
                      0, (_, animation) => slideIt(context, 0, animation),
                      duration: const Duration(milliseconds: 500));
                  setState(() {
                    _items.removeAt(0);
                  });
                },
                child: const Text(
                  "Remove first item",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
