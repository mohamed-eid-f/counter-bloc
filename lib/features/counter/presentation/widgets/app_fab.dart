import 'package:counter_bloc/features/counter/presentation/bloc/counter/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppFAB extends StatelessWidget {
  const AppFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(CounterIncrementEvent());
          },
          child: const Icon(Icons.add),
        ),
        const SizedBox(height: 16),
        FloatingActionButton(
          onPressed: () {
            context.read<CounterBloc>().add(CounterResetEvent());
          },
          child: const Text("0", style: TextStyle(fontSize: 24)),
        ),
        const SizedBox(height: 16),
        FloatingActionButton(
          onPressed: () {
            context.read<CounterBloc>().add(CounterDecrementEvent());
          },
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }
}
