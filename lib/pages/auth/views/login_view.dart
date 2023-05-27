import 'package:u_learning/common/common_widgets/CustomTextFields.dart';
import 'package:u_learning/common/common_widgets/custom_button.dart';
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
  final GlobalKey _formKey = GlobalKey<FormState>();

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
          SizedBox(height: 120.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomTextFieldNew(
                      controller: _emailCtr,
                      onChanged: (val){},
                      onFieldSubmitted: (val){},
                    iconData: Icons.person,
                      labelText: 'Email '
                  ),
                  SizedBox(height: 10.h,),
                  CustomTextFieldNew(
                      controller: _emailCtr,
                      onChanged: (val){},
                      onFieldSubmitted: (val){},
                      iconData: Icons.lock,
                      labelText: 'Password '
                  ),

                  SizedBox(height: 20.h,),
                  Text(
                    'Forgot Password',
                    style: TextStyle(
                      fontSize: MyFonts.size14,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeightManager.semiBold,
                      color: MyColors.themeColor
                    ),
                  ),


                ],
              ),
            ),
          ),
          SizedBox(height: 70.h,),
          CustomButton(
            onPressed: (){},
            buttonText: 'Log In',
            buttonWidth: 330.w,
            buttonHeight: 50.h,
          ),
          CustomButton(
            onPressed: (){},
            buttonText: 'Sign Up',
            buttonWidth: 330.w,
            buttonHeight: 50.h,
            backColor: MyColors.white,
            textColor: MyColors.blackColor,
          ),
        ],
      ),
    );
  }
}
