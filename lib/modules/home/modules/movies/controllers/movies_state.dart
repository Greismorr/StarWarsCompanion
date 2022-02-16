part of 'movies_bloc.dart';

@immutable
abstract class MoviesState {
  final bool isLoading;
  final List<Movie>? movies;

  const MoviesState({required this.isLoading, required this.movies});
}

class InitialMoviesState extends MoviesState {
  const InitialMoviesState() : super(isLoading: true, movies: const []);
}

class FetchMoviesDoneState extends MoviesState {
  const FetchMoviesDoneState({
    required List<Movie>? movies,
  }) : super(
          isLoading: false,
          movies: movies,
        );
}
