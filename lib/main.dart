import 'package:flutter/material.dart';

import 'models/movie.dart';
import 'models/user.dart';

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

/// 닉네임이 있을 수도, 없을 수도 있는 사용자들
const List<User> sampleUsers = [
  User(id: 'u1', nickname: '밍고'),
  User(id: 'u2'), // 닉네임을 아직 안 정함 -> null
  User(id: 'u3', nickname: '   '), // 공백만 입력함
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

  // nullable 닉네임을 안전한 기본값으로 바꿔서 출력하기
  debugPrint('--- 닉네임 ---');
  for (final user in sampleUsers) {
    debugPrint('${user.id}: ${user.nickname} -> ${user.displayName}');
  }

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Center(child: Text('Hello MovieLog!'))),
    ),
  );
}
