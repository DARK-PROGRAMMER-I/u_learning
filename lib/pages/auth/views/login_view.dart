import '../../../common/common_libs.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 70.h,),
          Text('Log In', style: getMediumStyle(fontSize: MyFonts.size16),),
          Divider(height: 1.h, color: MyColors.borderColor,)
        ],
      ),
    );
  }
}
