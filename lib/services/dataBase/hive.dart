import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class HiveDb {
  Future<void> initHive() async {
    WidgetsFlutterBinding.ensureInitialized();
    final appDocumentDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);
  }

  Future<void> save(key, dynamic value, nameBox) async {
    var box = await Hive.openBox(nameBox);
    box.put(key, value);
  }

  Future<dynamic> read(key, nameBox) async {
    var box = await Hive.openBox(nameBox);
    return box.get(key);
  }
}

enum HiveKey { counterBoxKey }

enum HiveName { counterBox }
