import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:u_learning/pages/auth/auth_blocs/auth_events.dart';
import 'package:u_learning/pages/auth/auth_blocs/auth_states.dart';

class AuthBlocs extends Bloc<AuthEvents, AuthStates>{
  AuthBlocs(): super(AuthStates()){
    on<>((event, emit) => null);
  }
}