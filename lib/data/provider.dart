import 'package:untitled1/services/dataBase/hive.dart';

class ProviderDataBase {
  void save(key, value, nameBox) async {
    await HiveDb().save(key, value, nameBox);
  }

  Future<dynamic> read(key, nameBox) async {
    return await HiveDb().read(key, nameBox);
  }
}
