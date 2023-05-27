import 'package:u_learning/common/common_widgets/CustomTextFields.dart';
import 'package:u_learning/utils/constants/assets_manager.dart';

import '../../../common/common_libs.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailCtr = TextEditingController();
  TextEditingController _passCtr = TextEditingController();

  @override
  void dispose() {
    _emailCtr.dispose();
    _passCtr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 70.h,),
          Text('Log In', style: getMediumStyle(fontSize: MyFonts.size16),),
          SizedBox(height: 15.h,),
          Divider(height: 1.h, color: MyColors.borderColor,),
          SizedBox(height: 30.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppAssets.googleIcon, width: 34.w, height: 34.h,),
              SizedBox(width: 30.w,),
              Image.asset(AppAssets.appleIcon, width: 34.w, height: 34.h,),
              SizedBox(width: 30.w,),
              Image.asset(AppAssets.facebookIcon, width: 34.w, height: 34.h,),

            ],
          ),
          SizedBox(height: 20.h,),
          Text('Or use your email account login.', style: getRegularStyle(
            color: MyColors.bluishGreyColor
          ),),
          SizedBox(height: 100.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Form(
              child: Column(
                children: [
                  CustomTextFieldNew(
                      controller: _emailCtr,
                      onChanged: (val){},
                      onFieldSubmitted: (val){},
                    iconData: Icons.person,
                      labelText: 'Email '
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
