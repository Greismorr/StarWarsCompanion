import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:star_wars_companion/core/constants/api_constants.dart';
import 'package:star_wars_companion/core/http_config/http_config.dart';
import 'package:star_wars_companion/core/models/movie.dart';
import 'package:star_wars_companion/modules/home/modules/movies/api/movies_api_interface.dart';

@Injectable(as: IMoviesApi)
class MoviesApi implements IMoviesApi {
  final _config = HttpConfig();
  final String moviesBaseUrl = '/api/films';

  @override
  Future<List<Movie>?> getAllMovies() async {
    try {
      final response = await get(
        Uri.http(_config.baseUrl, moviesBaseUrl),
        headers: _config.headers,
      );

      if (response.statusCode == 200) {
        List<Movie>? movies =
            MovieFetch.fromJson(json.decode(response.body)).content;
        return movies;
      }

      return null;
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
    return null;
  }
}
