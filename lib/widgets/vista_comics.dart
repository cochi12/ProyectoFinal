import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:marvel_comics/models/constants.dart';
import 'package:marvel_comics/models/response_comics.dart';
import 'package:marvel_comics/widgets/item_comic.dart';
import 'package:marvel_comics/api/comics_api.dart';
import 'package:provider/provider.dart';
import '../Provider/favorite_provider.dart';

class vistaComics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Comic>>(
      future: apiComics(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (snapshot.hasData) {
          return FadeInRightBig(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    itemCount: Constants.listComics.length,
                    itemBuilder: (context, index) {
                      final comic = snapshot.data![index];
                      return ItemComic(
                        comic: comic,
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
