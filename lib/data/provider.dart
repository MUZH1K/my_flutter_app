import 'package:untitled1/services/dataBase/hive.dart';

class Provider {
  void initializeDb() {
    HiveDb().initHive();
  }

  void saveDb(key, value) {
    HiveDb().saveHive(key, value);
  }

  Future<dynamic> readDb(key) async {
    return await HiveDb().readHive(key);
  }
}
