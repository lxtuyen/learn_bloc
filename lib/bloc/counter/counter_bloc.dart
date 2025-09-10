import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {
      if (event is IncrementEvent) {
        emit(state.copyWith(counter: state.counter + 1));
      } else if (event is DecrementEvent) {
        emit(state.copyWith(counter: state.counter - 1));
      }
    });
  }
}
