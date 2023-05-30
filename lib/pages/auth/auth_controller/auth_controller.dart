import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:u_learning/common/enums/category_type.dart';
import 'package:u_learning/pages/auth/auth_blocs/auth_bloc.dart';
import 'package:u_learning/pages/auth/auth_blocs/auth_states.dart';

class AuthController{
  final BuildContext context;
  AuthController({required this.context});


  Future handleSignIn({required AuthType loginType })async{
    if(loginType.name.toAuthTypeEnum() == AuthType.email){
      final state = context.read<AuthBlocs>().state;
      if(state.email == null){

      }else if()
    }else{

    }
  }
}