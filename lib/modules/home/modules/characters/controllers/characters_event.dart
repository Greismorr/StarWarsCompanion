part of 'characters_bloc.dart';

@immutable
abstract class CharactersEvent {}

class FetchCharactersDataEvent extends CharactersEvent {}

class NewPageRequestCharactersEvent extends CharactersEvent {}

class ChangeFavoriteStatusOfCharacterEvent extends CharactersEvent {
  final Character character;

  ChangeFavoriteStatusOfCharacterEvent(this.character);
}
