import 'package:star_wars_companion/core/models/character.dart';

abstract class ICharacterRepository {
  Future<List<Character>?> fetchCharacterData();

  Future<List<Character>?> getNewPageOfCharacters(int page);
}
