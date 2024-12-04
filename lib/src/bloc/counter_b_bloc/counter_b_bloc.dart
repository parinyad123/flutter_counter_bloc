import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_b_event.dart';
part 'counter_b_state.dart';

class CounterBBloc extends Bloc<CounterBEvent, CounterBState> {
  CounterBBloc() : super(const CounterBState(count: 0)) { // initial count=0

    // Add Event
    on<CounterBEventAdd>((event, emit) {
      // TODO: implement event handler
      emit(state.copyWrite(count: state.count + 1));
    });

    // Reset Event
    on<CounterBEventReset>((event, emit) {
      emit(state.copyWrite(count: 0));
    });
  }
}
