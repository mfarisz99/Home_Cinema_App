import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'movie.dart';


class MainMoviePosterCarousel extends StatefulWidget {
  final List<Movie> movies;
  final Function(int) onPosterTapped;

  MainMoviePosterCarousel({required this.movies, required this.onPosterTapped});

  @override
  _MainMoviePosterCarouselState createState() => _MainMoviePosterCarouselState();
}

class _MainMoviePosterCarouselState extends State<MainMoviePosterCarousel> {
  final List<String> mainMoviePosters = [
    'assets/Poster2.jpg',
    'assets/Poster3.jpg',
    'assets/Poster5.jpg',
    'assets/Poster1.jpg',
    'assets/Poster16.jpg',
  ];

  int Index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: mainMoviePosters.map((poster) {
            return Builder(
              builder: (BuildContext context) {
                return GestureDetector(
                  onTap: () {
                    widget.onPosterTapped(Index);
                  },
                  child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage(poster),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: 600,
            autoPlay: true,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                Index = index;
              });
            },
          ),
        ),
        SizedBox(height: 8.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: mainMoviePosters.map((poster) {
            int index = mainMoviePosters.indexOf(poster);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Index == index ? Colors.blue : Colors.grey,
              ),
            );
          }).toList(),
        ),
        SizedBox(height: 8.0),
      ],
    );
  }
}