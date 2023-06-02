import 'package:u_learning/utils/constants/assets_manager.dart';

import '../../../common/common_libs.dart';

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
          children: [
            SizedBox(height: 70.h,),
            Row(
              mainAxisAlignment: ,
              children: [
                Image.asset(AppAssets.menuIcon, height: 18.h, width: 18.w,)
              ],
            )
          ],
        ),
      ),
    );
  }
}