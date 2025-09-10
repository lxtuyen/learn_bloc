part of 'counter_bloc.dart';

sealed class CounterState extends Equatable {
  final int counter;
  const CounterState({this.counter = 0});

  CounterState copyWith({int? counter}); // abstract method

  @override
  List<Object> get props => [counter];
}

final class CounterInitial extends CounterState {
  const CounterInitial({super.counter});

  @override
  CounterInitial copyWith({int? counter}) {
    return CounterInitial(counter: counter ?? this.counter);
  }
}
