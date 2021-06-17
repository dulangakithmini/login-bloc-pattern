import "package:flutter/material.dart";

import 'bloc.dart';

class Provider extends InheritedWidget {
  final bloc = Bloc();

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
    // throw UnimplementedError();
  }
}
