import 'package:flutter/material.dart';

import 'models/movie.dart';

/// 내가 본 영화 목록
const List<Movie> myMovies = [
  Movie(
    title: 'Sing Street',
    director: 'John Carney',
    releaseYear: 2016,
    rating: 4.6,
  ),
  Movie(
    title: 'Begin Again',
    director: 'John Carney',
    releaseYear: 2013,
    rating: 4.4,
  ),
  Movie(
    title: 'Dune',
    director: 'Denis Villeneuve',
    releaseYear: 2021,
    rating: 4.3,
  ),
];

void main() {
  // for 문으로 제목 출력하기
  debugPrint('--- for ---');
  for (final movie in myMovies) {
    debugPrint(movie.title);
  }

  // map 으로 제목만 뽑아서 출력하기
  debugPrint('--- map ---');
  final titles = myMovies.map((movie) => movie.title).toList();
  debugPrint(titles.join(', '));

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Center(child: Text('Hello MovieLog!'))),
    ),
  );
}
