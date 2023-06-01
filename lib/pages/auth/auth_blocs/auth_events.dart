class AuthEvents{
  const AuthEvents();
}

class AuthNameEvent extends AuthEvents{
  final String name;
  AuthNameEvent({required this.name});
}

class AuthEmailEvent extends AuthEvents{
  final String email;
  AuthEmailEvent({required this.email});
}


class AuthPasswordEvent extends AuthEvents{
  final String password;
  AuthPasswordEvent({required this.password});
}

class AuthCnfrmPasswordEvent extends AuthEvents{
  final String cnfrmPassword;
  AuthCnfrmPasswordEvent({required this.cnfrmPassword});
}