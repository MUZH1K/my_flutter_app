import 'package:hive/hive.dart';
import 'package:untitled1/data/provider.dart';

class CounterRepository {
  int _counter = 0;

  int get getCounter => _counter;

  set setCounter(int value) {
    _counter = _counter + value;
    Provider.putCounter();
  }
}
