import 'package:u_learning/utils/constants/assets_manager.dart';

import '../../../common/common_libs.dart';
import '../home_widgets/home_search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, });


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(AppAssets.menuIcon, height: 18.h, width: 18.w,),
                Image.asset(AppAssets.personIcon, height: 18.h, width: 18.w,),
              ],
            ),
            SizedBox(height: 30.h,),
            Text('Hello,', style: getBoldStyle(fontSize: MyFonts.size26, color: MyColors.borderColor),),
            Text('Malik', style: getBoldStyle(fontSize: MyFonts.size26),),
            SearchBarHome(filterOnTap: () {  },),
            SizedBox(height: 10.h,),
            Container(
              height: 150.h,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: MyColors.yellowStarColor,
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(16.r),
                      child: Image.asset(AppAssets.homeImage1, width: MediaQuery.of(context).size.width, fit: BoxFit.cover,),
                  ),
                  Positioned(

                      child: child,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}