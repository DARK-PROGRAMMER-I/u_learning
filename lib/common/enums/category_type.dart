enum AuthType {
  email('email'),
  gmail('gmail'),
  apple('apple'),
  facebook('facebook');

  const AuthType(this.type);
  final String type;
}

extension convertTweet on String{
  AuthType toAuthTypeEnum(){
    switch(this) {
      case 'gmail':
        return AuthType.gmail;

      case 'apple':
        return AuthType.apple;

      case 'facebook':
        return AuthType.facebook;

      default:
        return AuthType.product;
    }
  }
}