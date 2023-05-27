class HomeStates {
  int counter;
  HomeStates({required this.counter});
}

class InitState extends HomeStates{
  InitState(): super(counter: 0);
}