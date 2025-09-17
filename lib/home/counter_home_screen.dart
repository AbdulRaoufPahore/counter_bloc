import 'package:counter_bloc_state_managment/cubit/counter_cubit.dart';
import 'package:counter_bloc_state_managment/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:velocity_x/velocity_x.dart';

class CounterHomeScreen extends StatefulWidget {
  const CounterHomeScreen({super.key});

  @override
  State<CounterHomeScreen> createState() => _CounterHomeScreenState();
}

class _CounterHomeScreenState extends State<CounterHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final counterCubit = context.read<CounterCubit>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: "Counter App with BLoC".text.white.bold.make(),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              BlocBuilder<CounterCubit, int>(
                builder: (context, state) {
                  return "Count : $state".text.make();
                },
              ),
              40.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buttonWidget(
                    title: "Increment",
                    bgColor: Colors.green,
                    onPress: () => counterCubit.increment(),
                  ),
                  buttonWidget(
                    title: "Decrement",
                    bgColor: Colors.red,
                    onPress: () => counterCubit.decrement(),
                  ),
                ],
              ),
              30.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buttonWidget(
                    title: "Reset All",
                    bgColor: Colors.orange,
                    onPress: () => counterCubit.resetAll(),
                  ),
                  buttonWidget(
                    title: "+ 5",
                    bgColor: Colors.blue,
                    onPress: () => counterCubit.fiveAddition(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () => counterCubit.floatButton(),
        child: "100".text.bold.make(),
      ),
    );
  }
}
