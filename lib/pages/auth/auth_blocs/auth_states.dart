class AuthStates{
  final String email;
  final String password;

  AuthStates({this.email = '',this.password = '',});

  AuthStates copyWith({String? email, String? password}){
    return AuthStates(
        email: email ?? this.email,
        password: password ?? this.password,
    );
  }
}