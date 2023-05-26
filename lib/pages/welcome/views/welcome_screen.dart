import 'package:flutter/material.dart';
import 'package:u_learning/common/common_libs.dart';
import 'package:u_learning/common/common_widgets/custom_button.dart';
import 'package:u_learning/utils/constants/assets_manager.dart';
import 'package:u_learning/utils/constants/font_manager.dart';

import '../welcome_widgets/image_card.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height:510.h,
            child: PageView(
              children: const [
                ImageCard(
                  imagePath: AppAssets.reading,
                  title: 'First See Learning',
                  description: 'Forget about a for off paper all knowledge in one learning',
                ),
                ImageCard(
                  imagePath: AppAssets.man,
                  title: 'Connect With Everyone',
                  description: 'Always keep in-touch with your Tutor & Friend. Let`s get connected!',
                ),
                ImageCard(
                  imagePath: AppAssets.boy,
                  title: 'Always Facinated Learning',
                  description: 'Forget about a for off paper all knowledge in one learning',
                ),
              ],
            ),
          ),
          SizedBox(height: 70.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: CustomButton(
                onPressed: (){

                },
                buttonText: 'Next'
            ),
          ),
        ],
      )
    );
  }
}
