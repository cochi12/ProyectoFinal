import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Bnavigation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
