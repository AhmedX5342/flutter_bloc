import 'package:bloc_project/logic/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates>{
  CounterCubit():super(CounterInit());
  int counter = 0;
  incrementCounter(){
    counter++;
    emit(CounterIncrement());
  }
}