import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_main/state_mngmnt_prvdr/model/movie.dart';

final List<Movie> movielist = List.generate(
    100,
    (index) => Movie(
        title: "movie$index",
        time:
            "${Random().nextInt(100) + 60} Minutes")); // for random time for movies, max 100 mnts and minimun 60 mnts

class MovieProvider extends ChangeNotifier {
  final List<Movie> movies = movielist;
  final List<Movie> wishlist = [];

  void addWishList(Movie movies) {
    wishlist.add(movies);
    notifyListeners();
  }

  void removeWishList(Movie movies) {
    wishlist.remove(movies);
    notifyListeners();
  }
}
