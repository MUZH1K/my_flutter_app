import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:untitled1/data/counter.dart';
import 'package:untitled1/data/provider.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  final CounterRepository counterRepository;

  CounterBloc(this.counterRepository) : super(counterRepository.getCounter) {
    on<IncrementCounter>(_onIncrement);
  }

  void _onIncrement(event, emit) {
    counterRepository.setCounter = 1;
    emit(counterRepository.getCounter);
  }
}

abstract class CounterEvent {}

class IncrementCounter extends CounterEvent {}
