import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:star_wars_companion/core/models/character.dart';
import 'package:star_wars_companion/modules/home/modules/characters/repository/character_repository_interface.dart';

part 'characters_event.dart';
part 'characters_state.dart';

@injectable
class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  final ICharacterRepository _repository;

  CharactersBloc(
    this._repository,
  ) : super(const InitialCharactersState());

  @override
  Stream<CharactersState> mapEventToState(
    CharactersEvent event,
  ) async* {
    if (event is FetchCharactersDataEvent) {
      yield* _mapFetchCharactersDataToState(event);
    } else if (event is NewPageRequestCharactersEvent) {
      yield* _mapNewPageRequestCharacters(event);
    }
  }

  Stream<CharactersState> _mapFetchCharactersDataToState(
      FetchCharactersDataEvent event) async* {
    yield const InitialCharactersState();

    yield FetchCharactersDoneState(
      characters: await _repository.fetchCharacterData(),
    );
  }

  Stream<CharactersState> _mapNewPageRequestCharacters(
      NewPageRequestCharactersEvent event) async* {
/*     yield state.copyWith(
      characters: newListOfCharacters,
      currentApiPage: state._nextPage,
    ); */
  }
}
