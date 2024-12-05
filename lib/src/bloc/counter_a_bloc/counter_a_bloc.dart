import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_a_event.dart';
part 'counter_a_state.dart';

class CounterABloc extends Bloc<CounterAEvent, CounterAState> {
  CounterABloc() : super(const CounterAState(count: 0)) {
    on<CounterAEventAdd>((event, emit) {
      // state.count = state.count + 1; // Don't allow this way because of interfere problem
      // But use emit to create new variable state
      // emit(CounterAState(count: state.count + 1));
      // or write optional form in __state.dart and write the code
      emit(state.copyWrite(count: state.count + 1));
    });

    on<CounterAEventReset>((event, emit) {
      emit(state.copyWrite(count: 0));
    });
  }
}
