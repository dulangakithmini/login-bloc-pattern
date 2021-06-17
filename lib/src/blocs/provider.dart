import "package:flutter/material.dart";

import 'bloc.dart';

class Provider extends InheritedWidget {
  final bloc = Bloc();

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
    // throw UnimplementedError();
  }

  static Bloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<Provider>()).bloc;
  }
}
