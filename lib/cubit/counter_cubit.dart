import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    debugPrint("Increment called state : $state");
    emit(state + 1);
  }

  void decrement() {
    debugPrint("decrement called state : $state");

    emit(state - 1);
  }

  void resetAll() {
    debugPrint("Reset called state : $state");

    emit(state - state);
  }

  void fiveAddition() {
    debugPrint("5 Added into state : $state");

    emit(state + 5);
  }

  void floatButton() {
    debugPrint("100 Added into state : $state");

    emit(state + 100);
  }
}
