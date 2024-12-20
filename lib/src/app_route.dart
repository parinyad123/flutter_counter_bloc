import 'package:cm_state_demo/src/pages/another_page.dart';
import 'package:cm_state_demo/src/pages/home_page.dart';
import 'package:flutter/cupertino.dart';

class AppRoute {
  static const home = 'home';
  static const another = 'another';

  final _route = <String, WidgetBuilder>{
    home: (context) => const MyHomePage(title: "Homepage"),
    another: (context) => const AnotherPage(
          title: "AnotherPage",
        ),
  };

  get getAll => _route;
}
