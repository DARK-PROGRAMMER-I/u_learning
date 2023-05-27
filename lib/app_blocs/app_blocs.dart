import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:u_learning/app_blocs/bloc_events.dart';
import 'package:u_learning/app_blocs/bloc_states.dart';

class HomeBlocs extends Bloc<HomeEvents, HomeStates>{
  HomeBlocs(): super(InitState()){
    on<Increment>((event, emit) {
      emit(HomeStates(counter: state.counter + 1));
    });

    on<Decrement>((event, emit) {
      emit(HomeStates(counter: state.counter -1));
    });
  }



}