import 'package:bloc/bloc.dart'; // Bloc is a package that provides a framework for building reactive applications.
import 'package:equatable/equatable.dart'; // Equatable is a package that provides a framework for building reactive applications.

part 'counter_b_event.dart';
part 'counter_b_state.dart';

class CounterBBloc extends Bloc<CounterBEvent, CounterBState> {
  // Defines a BLoC for Counter B (CounterBBloc), extending the Bloc class.
// It takes two types:
// CounterBEvent: Represents events that trigger state changes.
// CounterBState: Represents the state of Counter B.
  CounterBBloc() : super(const CounterBState(count: 0)) {
    // Constructor for the BLoC.
    // Calls the Bloc constructor (super) with the initial state: CounterBState(count: 0).

    // Add Event
    on<CounterBEventAdd>((event, emit) {
      // on<CounterBEventAdd> listens to CounterBEventAdd events.
      emit(state.copyWrite(
          count: state.count +
              1)); // Calls emit to update the state by incrementing the count value.
      // copyWrite is a method that creates a new instance of CounterBState with the count value incremented by 1.
      // Uses state.copyWrite to create a new state with the updated count.
    });

    // Reset Event
    on<CounterBEventReset>((event, emit) {
      // Listens for the CounterBEventReset event.
      emit(state.copyWrite(
          count:
              0)); // Emits a new state with count reset to 0 using state.copyWrite.
    });
  }
}
