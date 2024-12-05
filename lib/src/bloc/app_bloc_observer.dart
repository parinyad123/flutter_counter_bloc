import 'dart:developer' as developer;
//  Provides tools for logging messages and debugging with the Dart developer tools.
import 'package:flutter_bloc/flutter_bloc.dart'; // Contains the core BLoC library, which includes BlocObserver

class AppBlocObserver extends BlocObserver {
  // AppBlocObserver extends BlocObserver to customize the behavior of the BLoC framework.
// A custom class inheriting from BlocObserver. This class is used to observe and log BLoC-related activities across the app.
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    developer.log('onEvent -- ${bloc.runtimeType}, $event');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    developer.log('onTransition -- ${bloc.runtimeType}, $transition');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    developer.log('onError -- ${bloc.runtimeType}, $error');
  }
}
