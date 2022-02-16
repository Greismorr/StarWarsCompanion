class SqlConstants {
  static const databasePath = './star_wars_app.db';

  //Atributos da tabela do avatar
  static const avatarTable = 'avatarTable';
  static const avatarAsString = 'avatarAsString';

  //Atributos compartilhados pelas tabelas de favoritos
  static const favoriteTypesTable = 'favoriteTypes';
  static const favoriteTypesTableFk = 'favoriteTypeId';
  static const typeAttribute = 'itemType';
  static const titleAttribute = 'title';
  static const idString = 'id';
  static const isFavoriteAttribute = 'isFavorite';

  //Atributos da tabela de personagens favoritos
  static const favoriteCharactersTable = 'favoriteMoviesTable';
  static const nameAttribute = 'name';
  static const heightAttribute = 'height';
  static const massAttribute = 'mass';
  static const genderAttribute = 'gender';
  static const speciesAttribute = 'species';
  static const birthYearAttribute = 'birth_year';

  //Atributos da tabela de filmes favoritos
  static const favoriteMoviesTable = 'favoriteMoviesTable';
  static const directorAttribute = 'director';
  static const producerAttribute = 'producer';
  static const releaseDateAttribute = 'release_date';
  static const image = 'image';
}
