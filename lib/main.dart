import 'package:marvel_comics/Pages/home_page.dart';
import 'package:marvel_comics/Pages/description_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:marvel_comics/Provider/favorite_provider.dart';

void main() {
  runApp(PaginaPrincipal());
}

class PaginaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ComicsFavoritesProvider(),
        )
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: 'home',
          routes: {
            'home': (_) => HomePage(),
            'description': (_) => DescriptionComic(),
          }),
    );
  }
}
