class AuthEvents{
  const AuthEvents();
}

class AuthEmailEvent extends AuthEvents{
  final String email;
  AuthEmailEvent({required this.email});
}

class AuthPasswordEvent extends AuthEvents{
  final String password;
  AuthPasswordEvent({required this.password});
}