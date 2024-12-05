import 'package:cm_state_demo/src/app_route.dart';
import 'package:cm_state_demo/src/bloc/app_bloc_observer.dart';
import 'package:cm_state_demo/src/bloc/counter_a_bloc/counter_a_bloc.dart';
import 'package:cm_state_demo/src/bloc/counter_b_bloc/counter_b_bloc.dart';
import 'package:cm_state_demo/src/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // const MyApp({Key? key}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    final counterABloc =
        BlocProvider<CounterABloc>(create: (context) => CounterABloc());
    // create a new instance of CounterABloc and provide it to the widget tree.
    final counterBBloc =
        BlocProvider<CounterBBloc>(create: (context) => CounterBBloc());
    // create a new instance of CounterBBloc and provide it to the widget tree.

    return MultiBlocProvider(
      // MultiBlocProvider is used to provide multiple Blocs to the widget tree.
      providers: [counterABloc, counterBBloc],
      child: MaterialApp(
        //
        title: 'Flutter Demo',
        routes: AppRoute().getAll,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Home Page'),
      ),
    );
  }
}
