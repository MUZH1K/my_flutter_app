import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/data/counter.dart';




class CounterBloc extends Bloc<CounterEvent, int>{
  final CounterRepository counterRepository;
  CounterBloc(this.counterRepository): super (counterRepository.counter){
    on<IncrementCounter>(_onIncrement);
  }
    _onIncrement (event, emit) {
      counterRepository.counter++;
      emit(counterRepository.counter);
  }
}

abstract class CounterEvent {}
class IncrementCounter extends CounterEvent{}


