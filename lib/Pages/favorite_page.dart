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
                SizedBox(height: 40),
                Expanded(
                  child: ListView.builder(
                    itemCount: favoritesComics.listFavoriteList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(bottom: 23),
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
          : Center(
              child: Text(
                'You dont have favorite comics',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Bebas-Regular',
                ),
              ),
            ),
    );
  }
}
