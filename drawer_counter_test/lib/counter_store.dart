import 'package:mobx/mobx.dart';

class CounterStore {
  late Action increment;

  CounterStore() {
    increment = Action(_increment);
  }

  final Observable _count = Observable(0);
  int get count => _count.value;

  void setValue(int newValue) => _count.value = newValue;

  void _increment() {
    _count.value++;
  }
}
