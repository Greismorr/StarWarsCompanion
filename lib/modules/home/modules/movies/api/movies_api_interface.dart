import 'package:star_wars_companion/core/models/movie.dart';

abstract class IMoviesApi {
  Future<List<Movie>?> getAllMovies();
}
