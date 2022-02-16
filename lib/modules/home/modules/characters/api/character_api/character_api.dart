import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:star_wars_companion/core/http_config/http_config.dart';
import 'package:star_wars_companion/core/models/character.dart';
import 'package:star_wars_companion/modules/home/modules/characters/api/character_api_interface.dart';

@Injectable(as: ICharacterApi)
class CharacterApi implements ICharacterApi {
  final _config = HttpConfig();
  final String charactersPath = "/api/people";

  @override
  Future<List<Character>?> getAllCharacters() async {
    try {
      final response = await get(
        Uri.http(_config.baseUrl, charactersPath),
        headers: _config.headers,
      );

      if (response.statusCode == 200) {
        List<Character>? characters =
            CharacterFetch.fromJson(json.decode(response.body)).content;
        return characters;
      }

      return null;
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
    return null;
  }
}
