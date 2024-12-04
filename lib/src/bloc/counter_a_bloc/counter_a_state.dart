part of 'counter_a_bloc.dart';

class CounterAState extends Equatable { // Equatable is use to tag state changing

  final int count; // Declaration of variables state
  const CounterAState({required this.count}); // pass object{} value

  // or final int count = 0; pass value
  // final int count = 0;


  CounterAState copyWrite({int? count}) { //  Optional
    return CounterAState(count: count ?? this.count); // but if count value was not send, so count = this.count (old state)
  }


  @override
  String toString() {
    //TODO: implement toString
    // Change format:
    // AppBlocObserverTransition { currentState: CounterAState(3), event: CounterAEventAdd(), nextState: CounterAState(4) }
    // to
    // AppBlocObserverTransition { currentState: count: 4, event: CounterAEventAdd(), nextState: count: 5 }
    return "count: $count";
  }
  @override
  List<Object> get props => [count]; // use Equatable by add count, if count value is changed. the value will show on interface. if you are not show. please empty []
}
