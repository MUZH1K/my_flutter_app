import 'package:hive/hive.dart';

class HiveDb {
  Future<void> save(key, dynamic value, nameBox) async {
    var box = await Hive.openBox(nameBox);
    box.put(key, value);
  }

  Future<dynamic> read(key, nameBox) async {
    var box = await Hive.openBox(nameBox);
    return box.get(key);
  }
}

enum KeyHive { keyCounterBox }

enum NameHive { counterBox }
