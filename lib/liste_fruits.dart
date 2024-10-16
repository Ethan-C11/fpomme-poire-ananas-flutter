import 'package:flutter/material.dart';

class listeFruits extends StatefulWidget {
  const listeFruits({super.key, required this.title});
  final String title;

  @override
  State<listeFruits> createState() => _listeFruitsState();
}

class _listeFruitsState extends State<listeFruits> {
  int _counter = 0;
  List<int> _fruits = [];

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: _fruits.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.mail),
              title: Text(_fruits[index].toString())
            );
          },
        )

        ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
