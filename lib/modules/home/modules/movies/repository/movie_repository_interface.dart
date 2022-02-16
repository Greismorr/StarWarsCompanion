import 'package:star_wars_companion/core/models/movie.dart';

abstract class IMovieRepository {
  Future<List<Movie>?> fetchMovieData();
}
