class AuthStates{
  final String name;
  final String email;
  final String password;
  final String cnfrmPassword;

  AuthStates({this.email = '',this.password = '', this.name= '', this.cnfrmPassword= '',  });

  AuthStates copyWith({String? name,String? email,String? cnfrmPassword, String? password}){
    return AuthStates(
        email: email ?? this.email,
        password: password ?? this.password,
        name: name ?? this.name,
        cnfrmPassword: cnfrmPassword ?? this.cnfrmPassword,
    );
  }
}