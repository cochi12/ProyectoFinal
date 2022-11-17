import 'package:flutter/material.dart';
import 'package:proyectofinal_emmanuelrios/widgets/item_fondo.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(27, 126, 111, 1.0),
        centerTitle: true,
        title: const Text(
          "FAVORITE PAGE",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          fondoApp(),
        ],
      ),
    );
  }
}
