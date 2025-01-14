import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:untitled1/data/counter.dart';

class Provider {
  initHive() async {
    final applicationDocumentDir =
        await path_provider.getApplicationCacheDirectory();
    Hive.init(applicationDocumentDir.path);
    await Hive.openBox('counterBox');
  }

   void putCounter() {
    Hive.box('counterBox').put(1, CounterRepository().getCounter);
  }
}
