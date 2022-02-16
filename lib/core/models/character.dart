import 'package:star_wars_companion/core/constants/api_constants.dart';
import 'package:star_wars_companion/core/constants/sql_constants.dart';
import 'package:star_wars_companion/core/models/item_types.dart';

class CharacterFetch {
  final List<Character>? content;

  CharacterFetch({this.content});

  factory CharacterFetch.fromJson(Map<String, dynamic> json) {
    final List? characterList = json[ApiConstants.resultPropertyString];

    return CharacterFetch(
      content: characterList
          ?.map((character) => Character.fromJson(character))
          .toList(),
    );
  }
}

class Character {
  final String name;
  final String height;
  final String mass;
  final String birthYear;
  final String gender;
  final String specie;
  final ItemType type;
  bool isFavorite;

  Character({
    required this.height,
    required this.mass,
    required this.birthYear,
    required this.gender,
    required this.specie,
    required this.name,
    required this.isFavorite,
  }) : type = ItemType.character;

  factory Character.fromJson(Map<String, dynamic> json) {
    var specieUrl = json[SqlConstants.speciesAttribute].isEmpty
        ? 'Unknown'
        : json[SqlConstants.speciesAttribute][0]
            .replaceAll("https://swapi.dev/api/species/", "");

    return Character(
      name: json[SqlConstants.nameAttribute] as String,
      height: json[SqlConstants.heightAttribute] as String,
      mass: json[SqlConstants.massAttribute] as String,
      birthYear: json[SqlConstants.birthYearAttribute] as String,
      gender: json[SqlConstants.genderAttribute] as String,
      specie: specieUrl,
      isFavorite: false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      SqlConstants.nameAttribute: name,
      SqlConstants.heightAttribute: height,
      SqlConstants.massAttribute: mass,
      SqlConstants.birthYearAttribute: birthYear,
      SqlConstants.genderAttribute: gender,
      SqlConstants.speciesAttribute: specie,
      SqlConstants.isFavoriteAttribute: isFavorite,
    };
  }
}
