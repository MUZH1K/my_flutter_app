import 'package:untitled1/data/provider.dart';
import 'package:untitled1/services/dataBase/hive.dart';

class CounterRepository {
  final provider = ProviderDataBase();

  int _counter = 0;

  get getCounter => _counter;

  set setCounter(int value) {
    _counter = value;
  }

  void incrementValue(value) {
    provider.save(HiveKey.counterBoxKey.name, value, HiveName.counterBox.name);
    setCounter = value;
  }

  Future<void> updateValue() async {
    final value = await provider.read(
        HiveKey.counterBoxKey.name, HiveName.counterBox.name);
    setCounter = value;
  }
}
