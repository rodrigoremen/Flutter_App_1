import 'package:flutter/material.dart';

class Count extends StatefulWidget {
  const Count({super.key});

  @override
  State<Count> createState() => _CountState();
}

class _CountState extends State<Count> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    TextStyle fontTouch = TextStyle(fontSize: 32.0, color: Colors.amberAccent);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
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
          setState(() {
            
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
