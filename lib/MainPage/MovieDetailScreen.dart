import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import '../Payment/PaymentMethod.dart';
import 'Movie.dart';

class MovieDetailScreen extends StatelessWidget {
  final Movie movie;

  MovieDetailScreen({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(movie.title),
        titleTextStyle: TextStyle(color: Colors.amber, fontSize: 20),

      ),

    body: Container(
    color: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GradientBlurImage(imagePath: movie.poster, height: 700),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                movie.title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Genre: ${movie.genre}',
                style: TextStyle(fontSize: 16,color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Year Released: ${movie.year}',
                style: TextStyle(fontSize: 16,color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Actors: ${movie.actors}',
                style: TextStyle(fontSize: 16,color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Synopsis: ${movie.synopsis}',
                style: TextStyle(fontSize: 16,color: Colors.white),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaymentMethod(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.amber[700]!, // Set the desired background color
                      ),
                    ),
                    child: Text('Purchase'),
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),),
                    onPressed: () {
                      // Add to favorites logic
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Add to Favorites'),
                            content: Text('This movie has been added to your favorites.'),
                            actions: [
                              TextButton(
                                child: Text('OK'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text('Add to Favorites'),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    ),
    );
  }
}

class GradientBlurImage extends StatelessWidget {
  final String imagePath;
  final double height;

  GradientBlurImage({required this.imagePath, required this.height});

  @override
  Widget build(BuildContext context) {

    Widget imageWidget;
    if (imagePath.startsWith('assets/')) {
      imageWidget = Image.asset(
        imagePath,
        height: height,
        width: double.infinity,
        fit: BoxFit.cover,
      );
    } else {
      imageWidget = Image.file(
        imagePath as File,
        height: height,
        width: double.infinity,
        fit: BoxFit.cover,
      );
    }

    return Stack(
      children: [
        imageWidget,
        Container(
          height: height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomLeft,
              colors: [
                Colors.transparent,
                Colors.black,
              ],
            ),
          ),
        ),
      ],
    );
  }
}


      /*body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            movie.poster,
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: 300,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              movie.details,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}*/

