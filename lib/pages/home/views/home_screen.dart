import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app_blocs/app_blocs.dart';
import '../../../app_blocs/bloc_events.dart';
import '../../../app_blocs/bloc_states.dart';
import '../../../common/common_libs.dart';

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