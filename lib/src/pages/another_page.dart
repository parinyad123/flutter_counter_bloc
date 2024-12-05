import 'package:cm_state_demo/src/bloc/counter_a_bloc/counter_a_bloc.dart';
import 'package:cm_state_demo/src/bloc/counter_b_bloc/counter_b_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnotherPage extends StatefulWidget {
  const AnotherPage({super.key, required this.title});

  final String title;

  @override
  State<AnotherPage> createState() => _AnotherPageState();
}

class _AnotherPageState extends State<AnotherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: BlocBuilder<CounterABloc, CounterAState>(
        // BlocBuilder<CounterABloc, CounterAState> listens (CounterABloc) to and rebuilds the UI based on the state of CounterABloc.
        // BlocBuilder widgets are used to rebuild parts of the UI based on changes in the state
        // When CounterAState is updated (e.g., count is incremented), the column displaying Counter A's value is rebuilt.
        builder: (context, counterAState) {
          return BlocBuilder<CounterBBloc, CounterBState>(
            // listens to and rebuilds the UI based on the state of CounterBBloc.
            builder: (context, counterBState) {
              return Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'Counter A:',
                          ),
                          Text(
                            '${counterAState.count}',
                            style: Theme.of(context).textTheme.headlineMedium,
                          )
                        ]),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                            'Counter B:',
                          ),
                          Text(
                            '${counterBState.count}',
                            style: Theme.of(context).textTheme.headlineMedium,
                          )
                        ]),
                  ],
                ),
              );
            },
          );
        },
      ),

      // Widget Layout:
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Counter A
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                // Events are added to the respective BLoC when FABs are pressed using context.read<Bloc>().add(Event()).
                onPressed: () => context.read<CounterABloc>().add(
                    CounterAEventReset()), // CounterAEventReset is triggered when the "reset" FAB for Counter A is pressed.
                // context.read<Bloc>() ensures that the widget reads from the correct BLoC instance provided higher up in the widget tree.
                // context.read<CounterABloc>()  // Accesses CounterABloc instance
                tooltip: 'Reset',
                child: const Icon(Icons.restore),
              ),
              const SizedBox(
                height: 20,
              ),
              FloatingActionButton(
                onPressed: () => context.read<CounterABloc>().add(
                    CounterAEventAdd()), // CounterAEventAdd is triggered when the "+" FAB for Counter A is pressed.
                tooltip: 'Add',
                child: const Icon(Icons.add),
              ),
            ],
          ),

          // Counter B
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () =>
                    context.read<CounterBBloc>().add(CounterBEventReset()),
                tooltip: 'Reset',
                child: const Icon(Icons.restore),
              ),
              const SizedBox(
                height: 20,
              ),
              FloatingActionButton(
                onPressed: () =>
                    context.read<CounterBBloc>().add(CounterBEventAdd()),
                tooltip: 'Add',
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
