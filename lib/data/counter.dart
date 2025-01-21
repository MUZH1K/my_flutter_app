import 'package:untitled1/data/provider.dart';
import 'package:untitled1/services/dataBase/hive.dart';

class CounterRepository {
  CounterRepository() {
    provider.initializeDb();
  }

  Provider provider = Provider();

  int _counter = 0;

  dynamic get getCounter => _counter;

  set setCounter(int value) {
    _counter = value;
  }

  void incrementValue(value) {
    provider.saveDb(Operation.keyBox.name, value);
    setCounter = value;
  }

  updateValue(key) async {
    var qwerty = await provider.readDb(key);
    setCounter = qwerty;
  }
}
