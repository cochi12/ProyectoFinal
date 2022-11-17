import 'package:flutter/material.dart';
import 'package:proyectofinal_emmanuelrios/widgets/item_fondo.dart';
import 'package:proyectofinal_emmanuelrios/widgets/vista_comics.dart';
import 'package:proyectofinal_emmanuelrios/widgets/Bnavigation.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(27, 126, 111, 1.0),
        centerTitle: true,
        title: const Text(
          "MARVEL COMICS",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          fondoApp(),
          vistaComics(),
        ],
      ),
      bottomNavigationBar: Bnavigation(),
    );
  }
}