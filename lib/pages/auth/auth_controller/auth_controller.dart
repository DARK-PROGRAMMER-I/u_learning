import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:u_learning/common/enums/category_type.dart';
import 'package:u_learning/pages/auth/auth_blocs/auth_bloc.dart';
import 'package:u_learning/pages/auth/auth_blocs/auth_states.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController{
  final BuildContext context;
  AuthController({required this.context});


  Future handleSignIn({required AuthType loginType })async{
    try{
      if(loginType.name.toAuthTypeEnum() == AuthType.email){
        final state = context.read<AuthBlocs>().state;
        if(state.email == ''){

        }else if(state.password == ''){

        }

        final String email = state.email;
        final String password = state.password;

        try{

        }on FirebaseAuthException catch (e, st){
          debugPrintStack(stackTrace: st);
          debugPrint(e.toString());
        }
      }else{

      }
    }catch(e, st){
      debugPrintStack(stackTrace: st);
      debugPrint(e.toString());
    }

  }
}