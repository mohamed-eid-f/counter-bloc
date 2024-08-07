import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {
      if (event is CounterIncrementEvent) {
        counter = counter + 1;
        emit(CounterChangeState(counter: counter));
      } else if (event is CounterDecrementEvent) {
        counter = counter - 1;
        emit(CounterChangeState(counter: counter));
      } else if (event is CounterResetEvent) {
        counter = 0;
        emit(CounterChangeState(counter: counter));
      }
    });
  }
}
