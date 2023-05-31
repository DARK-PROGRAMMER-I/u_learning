import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:u_learning/pages/auth/auth_blocs/auth_events.dart';
import 'package:u_learning/pages/auth/auth_blocs/auth_states.dart';

class AuthBlocs extends Bloc<AuthEvents, AuthStates>{
  AuthBlocs(): super(AuthStates()){
    on<AuthEmailEvent>((event, emit) => authEmailEvent);
    on<AuthPasswordEvent>((event, emit) => authPaswordEvent);
  }

  authEmailEvent(AuthEmailEvent emailEvent, Emitter<AuthStates> emit) {
    print(emailEvent.email);
    emit(state.copyWith(email: emailEvent.email));
  }

  authPaswordEvent(AuthPasswordEvent passwordEvent, Emitter<AuthStates> emit) {
    emit(state.copyWith(password: passwordEvent.password));
  }
  
}