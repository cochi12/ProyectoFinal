import 'package:flutter/material.dart';
import 'package:proyectofinal_emmanuelrios/models/constants.dart';
import 'package:proyectofinal_emmanuelrios/models/response_comics.dart';
import 'package:proyectofinal_emmanuelrios/widgets/item_comic.dart';
import 'package:proyectofinal_emmanuelrios/api/comics_api.dart';

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
          return Column(
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
              )
            ],
          );
        }
        return const SizedBox();
      },
    );
  }
}
