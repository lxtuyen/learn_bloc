import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bloc_app/bloc/counter/counter_bloc.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter")),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              context.read<CounterBloc>().add(DecrementEvent());
            },
            child: const Text("+"),
          ),
          const SizedBox(width: 20),
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Text(
                "${state.counter}",
                style: const TextStyle(fontSize: 30),
              );
            },
          ),
          const SizedBox(width: 20),
          ElevatedButton(
            onPressed: () {
              context.read<CounterBloc>().add(IncrementEvent());
            },
            child: const Text("-"),
          ),
        ],
      ),
    );
  }
}
