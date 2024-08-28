import 'package:flutter/material.dart';
import 'package:flutter_application_2/counter_with_cubic/logic/cubit/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App With Cubic"),
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, CounterState>(
          builder: (context, state) {
            return Text("${state.counter}");
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton.extended(
            heroTag: 'Increment',
            onPressed: () {
              context.read<CounterCubit>().increment();
            },
            icon: const Icon(Icons.add),
            label: const Text("Increment"),
          ),
          FloatingActionButton.extended(
            heroTag: 'Decrement',
            onPressed: () {
              context.read<CounterCubit>().decrement();
            },
            icon: const Icon(Icons.remove),
            label: const Text("Decrement"),
          ),
        ],
      ),
    );
  }
}
