class BlocStates {
  int counter;
  BlocStates({required this.counter});
}

class InitState extends BlocStates{
  InitState(): super(counter: 0);
}