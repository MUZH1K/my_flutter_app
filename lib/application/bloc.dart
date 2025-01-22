import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:untitled1/data/counter.dart';
import 'package:untitled1/services/dataBase/hive.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  final CounterRepository counterRepository;

  CounterBloc(this.counterRepository) : super(counterRepository.getCounter) {
    on<IncrementCounter>(_onIncrement);
    on<UpdateCounter>(_onUpdate);
  }

  void _onIncrement(event, emit) {
    counterRepository.incrementValue(state + 1, NameHive.counterBox.name);
    emit(counterRepository.getCounter);
  }

  Future<void> _onUpdate(event, emit) async {
    await counterRepository.updateValue(
        KeyHive.keyCounterBox.name, NameHive.counterBox.name);
    emit(counterRepository.getCounter);
  }
}

abstract class CounterEvent {}

class IncrementCounter extends CounterEvent {}

class UpdateCounter extends CounterEvent {}
