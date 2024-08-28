import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(counter: 0));

  void increment() {
    final int newValue = state.counter + 1;
    emit(CounterState(counter: newValue));
  }

  void decrement() {
    final int newValue = state.counter - 1;
    emit(CounterState(counter: newValue));
  }
}
