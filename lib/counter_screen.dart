import 'package:bloc_project/logic/counter_cubit.dart';
import 'package:bloc_project/logic/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>CounterCubit(),
      child: BlocBuilder<CounterCubit,CounterStates>(
        builder: (context,state)=>Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: Text('counter app'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '${BlocProvider.of<CounterCubit>(context).counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: BlocProvider.of<CounterCubit>(context).incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ), // This trailing comma makes auto-formatting nicer for build methods.
        ),
      ),
    );
  }
}
