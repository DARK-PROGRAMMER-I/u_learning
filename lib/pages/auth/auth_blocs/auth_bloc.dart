import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:u_learning/pages/auth/auth_blocs/auth_events.dart';
import 'package:u_learning/pages/auth/auth_blocs/auth_states.dart';

class AuthBlocs extends Bloc<AuthEvents, AuthStates>{
  AuthBlocs(): super(AuthStates()){
    on<AuthEmailEvent>(authEmailEvent);
    on<AuthPasswordEvent>(authPaswordEvent);
    on<AuthNameEvent>(authNameEvent);
    on<AuthCnfrmPasswordEvent>(authCnfrmPaswordEvent);
  }

  authEmailEvent(AuthEmailEvent emailEvent, Emitter<AuthStates> emit) {
    emit(state.copyWith(email: emailEvent.email));
  }

  authPaswordEvent(AuthPasswordEvent passwordEvent, Emitter<AuthStates> emit) {
    // print('Password Event : ${passwordEvent.password}');
    emit(state.copyWith(password: passwordEvent.password));
  }

  authNameEvent(AuthNameEvent nameEvent, Emitter<AuthStates> emit) {
    emit(state.copyWith(name: nameEvent.name));
  }

  authCnfrmPaswordEvent(AuthCnfrmPasswordEvent cnfrmPasswordEvent, Emitter<AuthStates> emit) {
    emit(state.copyWith(cnfrmPassword: cnfrmPasswordEvent.cnfrmPassword));
  }
  
}