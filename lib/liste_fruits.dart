import 'package:flutter/material.dart';
import 'package:pomme_poire_ananas/liste_fruits_index.dart';

class listeFruits extends StatefulWidget {
  const listeFruits({super.key, required this.title});

  final String title;

  @override
  State<listeFruits> createState() => _listeFruitsState();
}

class _listeFruitsState extends State<listeFruits> {
  int _counter = 0;
  List<int> _fruits = [];
  late String _title;

  @override
  void initState() {
    _title = widget.title;
    super.initState();
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
      _fruits.add(_counter);
      _title = listeFruitsIndex.choixImageOuTitre(_counter, false);
    });
  }

  @override
  Widget build(BuildContext context) {
    Color itemColorPicker(int value) {
      if (value % 2 == 0) {
        return Color.fromARGB(150, 150, 20, 20); // pair
      } else {
        return Color.fromARGB(150, 20, 20, 150); // impair
      }
    }

    Color buttonColorPicker(int value) {
      if (value == 0) {
        return Color.fromARGB(255, 0, 0, 0);
      } else {
        return Color.fromARGB(180, 0, 150, 0);
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inverseSurface,
        foregroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Text(_title, textAlign: TextAlign.center),
        centerTitle: true,

      ),
      body: Center(
          child: ListView.builder(
            itemCount: _fruits.length,
            itemBuilder: (context, index) {
              return ListTile(
                  leading: Image(image: AssetImage("images/${listeFruitsIndex.choixImageOuTitre(_fruits[index], true)}")) ,
                  title: Text(_fruits[index].toString()),
                  textColor: const Color.fromARGB(255, 255, 255, 255),
                  tileColor: itemColorPicker(_fruits[index]));
            },
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        backgroundColor: buttonColorPicker(_counter),
        foregroundColor: Color.fromARGB(255, 255, 255, 255),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
