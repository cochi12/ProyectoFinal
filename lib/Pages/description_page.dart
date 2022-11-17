import 'package:flutter/material.dart';
import 'package:proyectofinal_emmanuelrios/models/response_comics.dart';
import 'package:proyectofinal_emmanuelrios/widgets/item_fondo.dart';

class DescriptionComic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final comicInfo = ModalRoute.of(context)!.settings.arguments as Comic;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(27, 126, 111, 1.0),
        centerTitle: true,
        title: const Text(
          "COMIC DESCRIPTION",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          fondoApp(),
          ListView(
            children: [
              Container(
                color: Color.fromRGBO(27, 126, 111, 1.0),
                padding: const EdgeInsets.all(25),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 1),
                            child: Text(
                              comicInfo.title,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 23,
                                color: Colors.white,
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
                height: 330,
                fit: BoxFit.cover,
              ),
              Container(
                padding: const EdgeInsets.all(25),
                child: const Text(
                    '',
                  softWrap: true,
                  style: TextStyle(
                    color: Colors.white,
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
