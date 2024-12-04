part of 'counter_b_bloc.dart';

class CounterBState extends Equatable {
  final int count;
  const CounterBState({required this.count});
  CounterBState copyWrite({int? count}) {
    return CounterBState(count: count ?? this.count);
  }
  @override
  String toString() {
    return "count: $count";
  }

  @override
  List<Object> get props => [count]; // determine, count is state that went to tag
}
