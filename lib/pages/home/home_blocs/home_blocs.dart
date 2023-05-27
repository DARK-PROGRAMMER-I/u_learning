import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_events.dart';
import 'home_states.dart';

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