import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/count/adapters/screens/color.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Color(),
    );
  }
}