import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:proyectofinal_emmanuelrios/widgets/item_fondo.dart';
import 'package:proyectofinal_emmanuelrios/widgets/vista_comics.dart';

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
      bottomNavigationBar: Container(
        color: const Color.fromRGBO(27, 126, 111, 1.0),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 4.5),
          child: GNav(
            backgroundColor: Color.fromRGBO(27, 126, 111, 1.0),
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.white24,
            gap: 8,
            //onTabChange: ,
            padding: EdgeInsets.all(16),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.favorite_border,
                text: 'Favorites',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
