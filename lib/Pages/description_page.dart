import 'package:flutter/material.dart';
import 'package:marvel_comics/models/response_comics.dart';
import 'package:marvel_comics/widgets/item_fondo.dart';
import 'package:provider/provider.dart';
import 'package:marvel_comics/Provider/favorite_provider.dart';

class DescriptionComic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final comicInfo = ModalRoute.of(context)!.settings.arguments as Comic;

    final providerFavoritesComics =
        Provider.of<ComicsFavoritesProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 184, 18, 6),
        centerTitle: true,
        title: const Text(
          "COMIC DESCRIPTION",
          style: TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Bebas-Regular',
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          fondoApp(),
          ListView(
            children: [
              Container(
                padding: const EdgeInsets.all(25),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 1),
                            child: Center(
                              child: Text(
                                comicInfo.title,
                                style: const TextStyle(
                                  fontSize: 35,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Bebas-Regular',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Image.network(
                comicInfo.getFullPoster(),
                width: 600,
                height: 600,
              ),
              IconButton(
                onPressed: () {
                  providerFavoritesComics.addComic(comicInfo);
                },
                icon: const Icon(
                  Icons.favorite,
                  size: 80,
                  color: Color.fromARGB(239, 223, 6, 6),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(80),
                child: Center(
                  child: Text(
                    comicInfo.description,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'Bebas-Regular',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
