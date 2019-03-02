import 'package:bloc_example/counter_bloc.dart';
import 'package:flutter/material.dart';

class CounterProvider extends InheritedWidget {
  final CounterBloc bloc;
  final Widget child;

  CounterProvider({this.bloc, this.child}) : super(child: child);

  static CounterProvider of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(CounterProvider);

  @override
  bool updateShouldNotify(CounterProvider oldWidget) {
    return bloc != oldWidget.bloc;
  }
}
