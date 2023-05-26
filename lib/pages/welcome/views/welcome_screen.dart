import 'package:flutter/material.dart';
import 'package:u_learning/common/common_libs.dart';
import 'package:u_learning/common/common_widgets/custom_button.dart';
import 'package:u_learning/utils/constants/assets_manager.dart';
import 'package:u_learning/utils/constants/font_manager.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [


          SizedBox(height: 70.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: CustomButton(
                onPressed: (){},
                buttonText: 'Next'
            ),
          ),
        ],
      )
    );
  }
}
