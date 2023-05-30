class AuthStates{
  final String email;
  final String password;

  AuthStates({this.email = '',this.password,});

  AuthStates.copyWith(this.email, this.password){
    AuthStates(email: email, password: password);
  }
}