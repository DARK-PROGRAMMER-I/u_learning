import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:u_learning/pages/auth/auth_blocs/auth_events.dart';
import 'package:u_learning/pages/auth/auth_blocs/auth_states.dart';

class AuthBlocs extends Bloc<AuthEvents, AuthStates>{
  AuthBlocs(): super(AuthStates()){
    on<AuthEmailEvent>(authEmailEvent);
    on<AuthPasswordEvent>(authPaswordEvent);
  }

  authEmailEvent(AuthEmailEvent emailEvent, Emitter<AuthStates> emit) {
    print('My Email is : ${state.email}');
    emit(state.copyWith(email: emailEvent.email));
  }

  authPaswordEvent(AuthPasswordEvent passwordEvent, Emitter<AuthStates> emit) {
    print('My Password is : ${passwordEvent.password}');
    emit(state.copyWith(password: passwordEvent.password));
  }
  
}