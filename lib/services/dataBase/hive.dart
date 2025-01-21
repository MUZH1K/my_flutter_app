import 'package:hive_flutter/adapters.dart';
import 'package:hive/hive.dart';

class HiveDb {
  void initHive() async {
    await Hive.initFlutter();
  }

  Future<void> saveHive(key, dynamic value) async {
    var box = await Hive.openBox("counterBox");
    box.put(key, value);
  }

  Future<dynamic> readHive(key) async {
    var box = await Hive.openBox("counterBox");
    return box.get(key);
  }
}

enum Operation { keyBox }
