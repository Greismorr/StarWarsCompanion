import 'package:injectable/injectable.dart';
import 'package:star_wars_companion/core/models/movie.dart';
import 'package:star_wars_companion/modules/home/modules/movies/api/movies_api_interface.dart';
import 'package:star_wars_companion/modules/home/modules/movies/repository/movie_repository_interface.dart';

@Injectable(as: IMovieRepository)
class MovieRepository implements IMovieRepository {
  final IMoviesApi _api;

  MovieRepository(
    this._api,
  );

  @override
  Future<List<Movie>?> fetchMovieData() async {
    final movieList = await _api.getAllMovies();

    return movieList;
  }
}
