// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:marvel_comics/Provider/favorite_provider.dart';
import 'package:provider/provider.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final favoritesComics = Provider.of<ComicsFavoritesProvider>(context);

    return Scaffold(
      body: favoritesComics.listFavoriteList.isNotEmpty
          ? Column(
              children: [
                const SizedBox(height: 40),
                Expanded(
                  child: ListView.builder(
                    itemCount: favoritesComics.listFavoriteList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 23),
                        child: ListTile(
                          leading: Image(
                              image: NetworkImage(favoritesComics
                                  .listFavoriteList[index]
                                  .getFullPoster())),
                          title: Text(
                              favoritesComics.listFavoriteList[index].title),
                        ),
                      );
                    },
                  ),
                ),
              ],
            )
          : const Center(
              child: const Text(
                'You dont have favorite comics',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Bebas-Regular',
                ),
              ),
            ),
    );
  }
}
