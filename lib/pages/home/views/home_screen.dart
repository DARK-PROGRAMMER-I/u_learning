import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:u_learning/pages/home/home_blocs/home_states.dart';

import '../../../common/common_libs.dart';
import '../home_blocs/home_blocs.dart';
import '../home_blocs/home_events.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, });


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBlocs, HomeStates>(
      builder: (BuildContext context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Home Screen'),
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
                heroTag: 'hola-kapito',
                onPressed: (){BlocProvider.of<HomeBlocs>(context).add(Increment());},
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                heroTag: 'hola',
                onPressed: (){BlocProvider.of<HomeBlocs>(context).add(Decrement());},
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