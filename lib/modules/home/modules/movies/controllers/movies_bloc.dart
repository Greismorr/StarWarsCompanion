import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:star_wars_companion/core/models/movie.dart';
import 'package:star_wars_companion/modules/home/modules/movies/repository/movie_repository_interface.dart';

part 'movies_event.dart';
part 'movies_state.dart';

@injectable
class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final IMovieRepository _repository;

  MoviesBloc(
    this._repository,
  ) : super(const InitialMoviesState());

  @override
  Stream<MoviesState> mapEventToState(
    MoviesEvent event,
  ) async* {
    if (event is FetchMoviesDataEvent) {
      yield* _mapFetchMoviesDataToState(event);
    }
  }

  Stream<MoviesState> _mapFetchMoviesDataToState(
      FetchMoviesDataEvent event) async* {
    yield const InitialMoviesState();

    yield FetchMoviesDoneState(movies: await _repository.fetchMovieData());
  }
}
