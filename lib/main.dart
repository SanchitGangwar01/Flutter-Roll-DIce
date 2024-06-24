
import 'package:first_app/gradient_container.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor:  Color.fromARGB(255, 95, 84, 40),
        body: GradientContainer(
             Color.fromARGB(255,68,21,149),
           Color.fromARGB(255,68,21,149),
        ),
      ),
    ),
  );
  //const is a keyword provided by a dart to optimize runtime performance to reuse the memory
}
