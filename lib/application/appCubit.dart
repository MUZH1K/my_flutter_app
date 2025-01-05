import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/data/counter.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super (CounterData.counter);

  void increment () {
    CounterData.counter++;
    emit(CounterData.counter);
  }
}



class CounterBloc extends Bloc<CounterEvent, int>{
  CounterBloc(): super (CounterData.counter){
    on<IncrementCounter>((event, emit) {
      CounterData.counter++;
      emit(CounterData.counter);
    }
    );
  }
}

abstract class CounterEvent {}
class IncrementCounter extends CounterEvent{}


