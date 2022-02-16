import 'package:sqflite/sqflite.dart';
import 'package:star_wars_companion/core/constants/sql_constants.dart';

class AppDatabase {
  factory AppDatabase() => _instance;

  AppDatabase._();

  static final AppDatabase _instance = AppDatabase._();

  Database? _db;

  /// Returns the database instance.
  Future<Database> get db async => _db ?? await _initDb();

  Future<Database> _initDb() async {
    return openDatabase(
      SqlConstants.databasePath,
      version: 1,
      onCreate: (Database db, int newerVersion) async {
        //Cria a tabela de personagens favoritos
        await db.execute(
          '''
          CREATE TABLE ${SqlConstants.favoriteCharactersTable} (
            ${SqlConstants.idString} INTEGER PRIMARY KEY AUTOINCREMENT,
            ${SqlConstants.nameAttribute} TEXT,
            ${SqlConstants.massAttribute} TEXT,
            ${SqlConstants.heightAttribute} TEXT,
            ${SqlConstants.birthYearAttribute} TEXT,
            ${SqlConstants.genderAttribute} TEXT,
            ${SqlConstants.speciesAttribute} TEXT,
            ${SqlConstants.typeAttribute} TEXT,
          ''',
        );

        //Cria a tabela de filmes favoritos
        await db.execute(
          '''
          CREATE TABLE ${SqlConstants.favoriteMoviesTable} (
            ${SqlConstants.idString} INTEGER PRIMARY KEY AUTOINCREMENT,
            ${SqlConstants.directorAttribute} TEXT,
            ${SqlConstants.producerAttribute} TEXT,
            ${SqlConstants.releaseDateAttribute} TEXT,
            ${SqlConstants.typeAttribute} TEXT,
          ''',
        );

        await db.execute(
          '''
          CREATE TABLE ${SqlConstants.avatarTable} (
            ${SqlConstants.idString} INTEGER PRIMARY KEY AUTOINCREMENT,
            ${SqlConstants.avatarAsString} TEXT
          )
          ''',
        );
      },
    );
  }
}
