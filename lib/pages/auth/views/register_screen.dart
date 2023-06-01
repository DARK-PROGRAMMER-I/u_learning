import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:u_learning/common/common_widgets/CustomTextFields.dart';
import 'package:u_learning/common/common_widgets/custom_button.dart';
import 'package:u_learning/common/enums/category_type.dart';
import 'package:u_learning/pages/auth/auth_blocs/auth_bloc.dart';
import 'package:u_learning/pages/auth/auth_blocs/auth_events.dart';
import 'package:u_learning/pages/auth/auth_blocs/auth_states.dart';
import 'package:u_learning/pages/auth/auth_controller/auth_controller.dart';
import 'package:u_learning/routes/route_manager.dart';
import 'package:u_learning/utils/constants/assets_manager.dart';

import '../../../common/common_libs.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailCtr = TextEditingController();
  final TextEditingController _passCtr = TextEditingController();
  final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailCtr.dispose();
    _passCtr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBlocs, AuthStates>(
      builder: (BuildContext context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 70.h,),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 18.w),
                      child: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: MyColors.profileIconsColor,
                        size: 18.spMin,
                      ),
                    ),
                    SizedBox(width: 150.w,),
                    Text('Sign Up', style: getMediumStyle(fontSize: MyFonts.size16),),
                  ],
                ),
                SizedBox(height: 15.h,),
                Divider(height: 1.h, color: MyColors.borderColor,),
                SizedBox(height: 30.h,),
                Text('Enter your details below to register free',
                  style: getRegularStyle(
                      color: MyColors.bluishGreyColor
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 50.h,),
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
                          onChanged: (val){
                            context.read<AuthBlocs>().add(AuthEmailEvent(email: val));
                          },
                          onFieldSubmitted: (val){},
                          iconData: Icons.person,
                          labelText: 'Email ',
                          hintText: 'Enter your email',
                        ),
                        SizedBox(height: 10.h,),
                        CustomTextFieldNew(
                          controller: _emailCtr,
                          onChanged: (val){
                            context.read<AuthBlocs>().add(AuthEmailEvent(email: val));
                          },
                          onFieldSubmitted: (val){},
                          iconData: Icons.person,
                          labelText: 'Email ',
                          hintText: 'Enter your email',
                        ),
                        SizedBox(height: 10.h,),
                        CustomTextFieldNew(
                          controller: _passCtr,
                          obscure: true,
                          onChanged: (val){
                            context.read<AuthBlocs>().add(AuthPasswordEvent(password: val));
                          },
                          onFieldSubmitted: (val){},
                          iconData: Icons.lock,
                          labelText: 'Password ',
                          hintText: 'Enter your password',
                        ),
                        SizedBox(height: 10.h,),
                        CustomTextFieldNew(
                          controller: _passCtr,
                          obscure: true,
                          onChanged: (val){
                            context.read<AuthBlocs>().add(AuthPasswordEvent(password: val));
                          },
                          onFieldSubmitted: (val){},
                          iconData: Icons.lock,
                          labelText: 'Password ',
                          hintText: 'Enter your password',
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 130.h,),
                CustomButton(
                  onPressed: (){
                    // Navigator.pushNamed(context, AppRoutes.registerScreen);
                  },
                  buttonText: 'Sign Up',
                  buttonWidth: 330.w,
                  buttonHeight: 50.h,
                  backColor: MyColors.themeColor,
                  textColor: MyColors.white,
                ),
              ],
            ),
          ),
        );
      },

    );
  }
}