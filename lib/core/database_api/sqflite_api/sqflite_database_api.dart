import 'package:injectable/injectable.dart';
import 'package:sqflite/sqflite.dart';
import 'package:star_wars_companion/core/constants/sql_constants.dart';
import 'package:star_wars_companion/core/database_api/database_api_interface.dart';
import 'app_database.dart';

@Injectable(as: IDatabaseApi)
class SqfliteDatabaseApi implements IDatabaseApi {
  Future<Database> _database() async => AppDatabase().db;

  @override
  Future<bool> removeData({
    required String tableName,
    required String title,
  }) async {
    try {
      final database = await _database();

      await database.delete(
        tableName,
        where: '${SqlConstants.titleAttribute} = ?',
        whereArgs: [title],
      );

      return true;
    } on Exception {
      return false;
    }
  }

  @override
  Future<bool> saveData({
    required String tableName,
    required Map<String, dynamic> data,
  }) async {
    try {
      final database = await _database();

      await database.insert(tableName, data);

      return true;
    } on Exception {
      return false;
    }
  }

  @override
  Future<List<Map<String, dynamic>>?> getAllData({
    required String tableName,
  }) async {
    try {
      final database = await _database();

      final results = await database.query(tableName);

      return results;
    } on Exception {
      return null;
    }
  }

  @override
  Future<bool> removeAllData({required String tableName}) async {
    try {
      final database = await _database();

      await database.delete(tableName);

      return true;
    } on Exception {
      return false;
    }
  }
}
