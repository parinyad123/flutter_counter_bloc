part of 'counter_b_bloc.dart';

class CounterBState extends Equatable {
  final int count; // final: The value of count cannot be changed after it is initialized.
  const CounterBState({required this.count}); // Constructor for the CounterBState class.
  CounterBState copyWrite({int? count}) {
    3
    // copyWrite method to create a new instance of CounterBState with an optional count value.
    // ??: If count is null, use the current count value.
    return CounterBState(count: count ?? this.count); //
  }

  @override
  String toString() {
    // toString method to return a string representation of the CounterBState.
    return "count: $count"; // Returns a string that includes the current count value.
  }

  @override
  List<Object> get props =>
      [count]; // get props returns a list of properties that define the state.
}
