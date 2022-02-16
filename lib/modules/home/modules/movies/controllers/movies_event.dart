part of 'movies_bloc.dart';

@immutable
abstract class MoviesEvent {}

class FetchMoviesDataEvent extends MoviesEvent {}

class ChangeFavoriteStatusOfMovieEvent extends MoviesEvent {
  final Movie movie;

  ChangeFavoriteStatusOfMovieEvent(this.movie);
}
