import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bloc_app/bloc/counter/counter_bloc.dart';
import 'package:my_bloc_app/bloc/switch/switch_bloc.dart';
import 'package:my_bloc_app/bloc/to_do/to_do_bloc.dart';
import 'package:my_bloc_app/ui/switch_screen.dart';
import 'package:my_bloc_app/ui/to_do_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
        BlocProvider(
          create: (context) => ToDoBloc(),
        ),
                BlocProvider(
          create: (context) => SwitchBloc(),
        ),
      ],
      child:MaterialApp(
      title: 'Bloc Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ToDoScreen(),
    ),
    );
  }
}
