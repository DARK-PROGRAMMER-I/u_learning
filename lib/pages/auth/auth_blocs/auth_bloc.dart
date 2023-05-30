import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:u_learning/pages/auth/auth_blocs/auth_events.dart';
import 'package:u_learning/pages/auth/auth_blocs/auth_states.dart';

class AuthBlocs extends Bloc<AuthEvents, AuthStates>{
  AuthBlocs(): super(AuthStates()){
    on<AuthEmailEvent>((event, emit) => authEmailEvent);
  }

  authEmailEvent(AuthEmailEvent emailEvent, Emitter<AuthStates> emit) {
    emit(AuthStates(email: emailEvent.email));
  }

  authPaswordEvent(AuthEmailEvent emailEvent, Emitter<AuthStates> emit) {
    emit(AuthStates(email: emailEvent.email));
  }
  
}