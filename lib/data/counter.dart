import 'package:untitled1/data/provider.dart';
import 'package:untitled1/services/dataBase/hive.dart';

class CounterRepository {
  final provider = ProviderDataBase();

  int _counter = 0;

  get getCounter => _counter;

  set setCounter(int value) {
    _counter = value;
  }

  void incrementValue(value, nameBox) {
    provider.save(KeyHive.keyCounterBox.name, value, nameBox);
    setCounter = value;
  }

  Future<void> updateValue(key, nameBox) async {
    var _value = await provider.read(key, nameBox);
    setCounter = _value;
  }
}
