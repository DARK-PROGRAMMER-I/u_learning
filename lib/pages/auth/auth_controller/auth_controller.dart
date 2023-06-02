import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:u_learning/common/common_widgets/show_toast.dart';
import 'package:u_learning/common/enums/category_type.dart';
import 'package:u_learning/pages/auth/auth_blocs/auth_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:u_learning/pages/auth/auth_errors.dart';

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
          final credentials  = await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
          if(credentials.user == null){

          }

          if(!credentials.user!.emailVerified){

          }

        }on FirebaseAuthException catch (e, st){
          AuthErrors error = AuthErrors.from(e);
          showSnackBar(context, '${error.dialogeTitle} \n ${error.dialogeText}');
        }
      }else{

      }
    }catch(e, st){
      debugPrintStack(stackTrace: st);
      debugPrint(e.toString());
    }

  }

  Future handleRegister({required AuthType loginType })async{
    try{
      if(loginType.name.toAuthTypeEnum() == AuthType.email){
        handleEmailRegistration();
      }else{

      }
    }catch(e, st){
      debugPrintStack(stackTrace: st);
      debugPrint(e.toString());
    }

  }

  Future handleEmailRegistration()async{
    final state = context.read<AuthBlocs>().state;
    if(state.email == ''){
      showSnackBar(context, 'Enter Email!');
    }else if(state.password == ''){
      showSnackBar(context, 'Enter Password!');
    }
    else if(state.name == ''){
      showSnackBar(context, 'Enter your name please!');
    }
    else if(state.cnfrmPassword == ''){
      showSnackBar(context, 'Enter Password Again!');
    }
    else if(state.password  != state.cnfrmPassword){
      showSnackBar(context, 'Passwords Don\'t Match!');
    }

    final String email = state.email;
    final String password = state.password;
    final String userName = state.name;

    try{
      final credentials  = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
      if(credentials.user != null){
        await credentials.user!.sendEmailVerification();
        await credentials.user!.updateDisplayName(userName);
        showSnackBar(context, 'Verification email is sent to your email, make sure you verify it before login again.');
      }

    }on FirebaseAuthException catch (e, st){
      AuthErrors error = AuthErrors.from(e);
      showSnackBar(context, '${error.dialogeTitle} \n ${error.dialogeText}');
    }
  }
}