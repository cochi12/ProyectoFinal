import 'package:proyectofinal_emmanuelrios/Pages/home_page.dart';
import 'package:proyectofinal_emmanuelrios/Pages/description_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyectofinal_emmanuelrios/Pages/favorite_page.dart';

void main() {
  runApp(PaginaPrincipal());
}

class PaginaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          'home': (_) => HomePage(),
          'description': (_) => DescriptionComic(),
          'favorite': (_) => FavoritePage(),
        });
  }
}

