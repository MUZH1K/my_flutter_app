import 'package:hive/hive.dart';
import 'package:untitled1/data/provider.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

class CounterRepository {
  CounterRepository(){name.initHive();}
  Provider name = Provider();



  int _counter = 0;

  int get getCounter => _counter;

  set setCounter(int value) {
    _counter = _counter + value;
    name.putCounter();
  }
}
