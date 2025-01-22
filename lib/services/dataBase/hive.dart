import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class HiveDb {
  Future<void> init() async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);
  }

  Future<void> save(key, dynamic value, nameBox) async {
    final box = await Hive.openBox(nameBox);
    box.put(key, value);
  }

  Future<dynamic> read(key, nameBox) async {
    final box = await Hive.openBox(nameBox);
    return box.get(key);
  }
}

enum HiveKey { counterBoxKey }

enum HiveName { counterBox }
