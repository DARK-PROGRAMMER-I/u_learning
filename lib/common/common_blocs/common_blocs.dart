import 'package:flutter_bloc/flutter_bloc.dart';

import '../../pages/auth/auth_blocs/auth_bloc.dart';
import '../../pages/home/home_blocs/home_blocs.dart';
import '../../pages/welcome/welcome_blocs/welcome_bloc.dart';

class AppBlocs{
  static get allBlocs => [
    BlocProvider(create: (context)=> WelcomeBloc(), ),
    BlocProvider(create: (context)=> HomeBlocs(), ),
    BlocProvider(create: (context)=> AuthBlocs(), ),
  ];
}