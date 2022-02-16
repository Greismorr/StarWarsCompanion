import 'package:star_wars_companion/core/models/character.dart';

abstract class ICharacterApi {
  Future<List<Character>?> getAllCharacters();
}
