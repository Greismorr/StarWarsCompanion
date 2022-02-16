import 'package:injectable/injectable.dart';
import 'package:star_wars_companion/core/models/character.dart';
import 'package:star_wars_companion/modules/home/modules/characters/api/character_api_interface.dart';
import 'package:star_wars_companion/modules/home/modules/characters/repository/character_repository_interface.dart';

@Injectable(as: ICharacterRepository)
class CharacterRepository implements ICharacterRepository {
  final ICharacterApi _api;

  CharacterRepository(
    this._api,
  );

  @override
  Future<List<Character>?> fetchCharacterData() async {
    final characterList = await _api.getAllCharacters();

    return characterList;
  }

  @override
  Future<List<Character>?> getNewPageOfCharacters(int page) {
    // TODO: implement getNewPageOfCharacters
    throw UnimplementedError();
  }
}
