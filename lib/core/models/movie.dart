import 'package:star_wars_companion/core/constants/api_constants.dart';
import 'package:star_wars_companion/core/constants/sql_constants.dart';
import 'package:star_wars_companion/core/models/item_types.dart';

class MovieFetch {
  final List<Movie>? content;

  MovieFetch({this.content});

  factory MovieFetch.fromJson(Map<String, dynamic> json) {
    final List? moviesList = json[ApiConstants.resultPropertyString];

    return MovieFetch(
      content: moviesList?.map((movie) => Movie.fromJson(movie)).toList(),
    );
  }
}

class Movie {
  final String title;
  final String director;
  final String releaseDate;
  final String producer;
  final ItemType type;
  bool isFavorite;

  Movie({
    required this.title,
    required this.director,
    required this.releaseDate,
    required this.producer,
    required this.isFavorite,
  }) : type = ItemType.character;

  Map<String, dynamic> toMap() {
    return {
      SqlConstants.titleAttribute: title,
      SqlConstants.directorAttribute: director,
      SqlConstants.releaseDateAttribute: releaseDate,
      SqlConstants.producerAttribute: producer,
      SqlConstants.typeAttribute: type,
    };
  }

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json[SqlConstants.titleAttribute] as String,
      director: json[SqlConstants.directorAttribute] as String,
      releaseDate: json[SqlConstants.releaseDateAttribute] as String,
      producer: json[SqlConstants.producerAttribute] as String,
      isFavorite: false,
    );
  }

  changeFavoriteStatus() {
    return Movie(
      title: title,
      isFavorite: !isFavorite,
      director: director,
      producer: producer,
      releaseDate: releaseDate,
    );
  }
}
