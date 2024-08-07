import 'package:counter_bloc/features/counter/presentation/bloc/counter/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCounter extends StatelessWidget {
  const AppCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          print(state);
          if (state is CounterInitial) {
            print("COUNTER: ???");

            return const Text(
              '0',
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 30,
              ),
            );
          } else if (state is CounterChangeState) {
            print("COUNTER: ${state.counter}");
            return Text(
              "${state.counter}",
              style: const TextStyle(
                color: Colors.blueGrey,
                fontSize: 30,
              ),
            );
          }

          return const SizedBox();
        },
      ),
    );
  }
}
