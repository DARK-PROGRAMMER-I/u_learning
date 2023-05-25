import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:u_learning/app_blocs/bloc_events.dart';
import 'package:u_learning/app_blocs/bloc_states.dart';

class AppBlocs extends Bloc<BlocEvents, BlocStates>{
  AppBlocs(): super(InitState()){
    on<Increment>((event, emit) {
      emit(BlocStates(counter: state.counter + 1));
    });

    on<Decrement>((event, emit) {
      emit(BlocStates(counter: state.counter -1));
    });
  }



}