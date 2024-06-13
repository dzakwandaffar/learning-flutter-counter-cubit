import 'package:flutter/material.dart';
import 'package:flutter_counter_cubit/counter/counter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Text("$state", style: Theme.of(context).textTheme.displayLarge,);
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            key: const Key("counterview_increment_feb"),
            child: const Icon(Icons.add),
            onPressed: () {
              // Panggil CounterCubit.increment().nambah()
              context.read<CounterCubit>().increment();
            },
          ),
          FloatingActionButton(
            key: const Key("counterview_decrement_feb"),
            child: const Icon(Icons.remove),
            onPressed: () {
              // Panggil CounterCubit.increment().nambah()
              context.read<CounterCubit>().decrement();
            },
          ),
          FloatingActionButton(
            key: const Key("counterview_multiply_feb"),
            child: const Icon(Icons.move_up),
            onPressed: () {
              // Panggil CounterCubit.increment().nambah()
              context.read<CounterCubit>().multiply();
            },
          ),
          FloatingActionButton(
            key: const Key("counterview_doubleDecrement_feb"),
            child: const Icon(Icons.move_down),
            onPressed: () {
              // Panggil CounterCubit.increment().nambah()
              context.read<CounterCubit>().doubleDecrement();
            },
          ),
          FloatingActionButton(
            key: const Key("counterview_reset_feb"),
            child: const Icon(Icons.stop_circle),
            onPressed: () {
              // Panggil CounterCubit.increment().nambah()
              context.read<CounterCubit>().reset();
            },
          ),
        ],
      ),
    );
  }
}