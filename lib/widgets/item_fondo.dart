import 'package:flutter/material.dart';


Widget fondoApp() {
  final gradient = Container(
    width: double.infinity,
    height: double.infinity,
    decoration:  const BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color.fromRGBO(33, 9, 40, 1.0),
              Color.fromARGB(255, 184, 18, 6),
            ]
        )
    ),
  );

  return Stack(
    children: <Widget>[
      gradient
    ],
  );
}