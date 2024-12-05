# cm_state_demo

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

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
