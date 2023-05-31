import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:u_learning/firebase_options.dart';
import 'package:u_learning/pages/auth/auth_blocs/auth_bloc.dart';
import 'package:u_learning/pages/home/home_blocs/home_blocs.dart';
import 'package:u_learning/pages/welcome/welcome_blocs/welcome_bloc.dart';
import 'package:u_learning/routes/route_manager.dart';
import 'package:u_learning/utils/constants/app_constants.dart';
import 'package:u_learning/utils/thems/theme.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(AppConstants.screenWidget, AppConstants.screenHeight),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (context)=> WelcomeBloc(), ),
            BlocProvider(create: (context)=> HomeBlocs(), ),
            BlocProvider(create: (context)=> AuthBlocs(), ),
          ],

          child: MaterialApp(
            title: 'Flutter Demo',
            debugShowCheckedModeBanner: false,
            theme: lightThemeData(context),
            // home: const MyHomePage(title: 'Flutter Demo Home Page'),
            initialRoute: AppRoutes.welcomeScreen,
            onGenerateRoute: AppRoutes.onGenerateRoute,
          ),
        );
      },
    );



  }
}


