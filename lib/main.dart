import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:u_learning/app_blocs/app_blocs.dart';
import 'package:u_learning/app_blocs/bloc_events.dart';
import 'package:u_learning/app_blocs/bloc_states.dart';
import 'package:u_learning/pages/welcome/welcome_blocs/welcome_bloc.dart';
import 'package:u_learning/routes/route_manager.dart';
import 'package:u_learning/utils/constants/app_constants.dart';
import 'package:u_learning/utils/thems/theme.dart';

void main() {
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
            BlocProvider(create: (context)=> AppBlocs(), ),
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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBlocs, BlocStates>(
      builder: (BuildContext context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text(widget.title),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '${state.counter}',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),

            bottomNavigationBar:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FloatingActionButton(
                  onPressed: (){BlocProvider.of<AppBlocs>(context).add(Increment());},
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: (){BlocProvider.of<AppBlocs>(context).add(Decrement());},
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
        );
      },

    );
  }
}
