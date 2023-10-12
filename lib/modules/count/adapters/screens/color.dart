import 'package:flutter/material.dart';

class Color extends StatefulWidget {
  const Color({super.key});

  @override
  State<Color> createState() => _ColorState();
}

class _ColorState extends State<Color> {
  var colores = [
    Colors.amber,
    Colors.blue,
    Colors.deepOrange,
    Colors.green,
    Colors.pink,
    Colors.amber,
    Colors.blue,
    Colors.deepOrange,
    Colors.green,
    Colors.pink
  ];
  int number = 0;
  @override
  Widget build(BuildContext context) {
    TextStyle fontTouch = TextStyle(fontSize: 32.0, color: colores[number]);
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador', style: fontTouch),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Numero de touch', style: fontTouch),
              Text(
                '$number',
                style: fontTouch,
              )
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          number++;
          print('ola, $number');
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
