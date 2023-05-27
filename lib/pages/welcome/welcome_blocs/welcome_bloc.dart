import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:u_learning/pages/welcome/welcome_blocs/welcome_events.dart';
import 'package:u_learning/pages/welcome/welcome_blocs/welcome_states.dart';

class WelcomeBloc extends Bloc<WelcomeEvents, WelcomeState>{
  WelcomeBloc(): super(WelcomeState()){
    on<WelcomeEvents>((event, emit){
      emit(WelcomeState(page: state.page));
    });


  }
}