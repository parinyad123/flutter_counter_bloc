part of 'counter_b_bloc.dart';

sealed class CounterBEvent extends Equatable {
  // Declares a sealed class named CounterBEvent that extends Equatable.
//Using Equatable ensures that events can be compared for equality
  const CounterBEvent(); // Constructor for the sealed class.

  @override
  List<Object?> get props => [];
  // Equatable requires the implementation of the props getter, which returns a list of properties that define the event.
  // Returns an empty list because these events don't carry additional data
}

class CounterBEventAdd extends CounterBEvent {}

class CounterBEventReset extends CounterBEvent {}
