import 'package:counter_bloc_state_managment/cubit/counter_cubit.dart';
import 'package:counter_bloc_state_managment/home/counter_home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "BLoC State Managemet",
        theme: ThemeData.light(useMaterial3: true),
        home: CounterHomeScreen(),
      ),
    );
  }
}
