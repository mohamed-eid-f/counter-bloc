part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {
  const CounterState();

  @override
  List<Object> get props => [];
}

final class CounterInitial extends CounterState {}

final class CounterChangeState extends CounterState {
  final int counter;

  const CounterChangeState({required this.counter});

  @override
  List<Object> get props => [counter];
}
