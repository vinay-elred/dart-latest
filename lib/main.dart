import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Generic type"),
        ),
        body: ListBuilder1(
          list: const [1, 2, 3, 5, 7, 9],
          builder: (item, index) {
            return Container(
              color: Colors.amber,
              margin: const EdgeInsets.all(8),
              child: Text(item.toString()),
            );
          },
        ),
      ),
    );
  }
}

typedef Builder<T> = Widget Function(T item, int index);

class ListBuilder<T> extends StatelessWidget {
  final List<T> list;
  final Builder<T> builder;
  const ListBuilder({super.key, required this.list, required this.builder});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (context, index) {
        final item = list[index];
        return builder(item, index);
      },
    );
  }
}

class ListBuilder1<T extends Object> extends StatelessWidget {
  final List<T> list;
  final Builder<T> builder;
  const ListBuilder1({super.key, required this.list, required this.builder});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (context, index) {
        final item = list[index];
        return builder(item, index);
      },
    );
  }
}
