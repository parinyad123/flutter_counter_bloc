# Interaction Flow:
## Incrementing a Counter:

- Press "+" FAB for Counter A.
- CounterAEventAdd is added to CounterABloc.
- CounterABloc processes the event, updates the state (CounterAState with incremented count), and emits it.
- BlocBuilder<CounterABloc, CounterAState> rebuilds, updating the UI with the new count.

## Resetting a Counter:

- Press "reset" FAB for Counter B.
- CounterBEventReset is added to CounterBBloc.
- CounterBBloc processes the event, updates the state (CounterBState with count = 0), and emits it.
- BlocBuilder<CounterBBloc, CounterBState> rebuilds, updating the UI with the reset count.
