abstract class IDatabaseApi {
  Future<bool> saveData({
    required String tableName,
    required Map<String, dynamic> data,
  });

  Future<bool> removeData({
    required String tableName,
    required String title,
  });

  Future<List<Map<String, dynamic>>?> getAllData({
    required String tableName,
  });

  Future<bool> removeAllData({
    required String tableName,
  });
}
