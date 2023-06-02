import 'package:flutter/cupertino.dart';
import 'package:u_learning/utils/constants/assets_manager.dart';

import '../../../common/common_libs.dart';
import '../../../common/common_widgets/CustomTextFields.dart';

class SearchBarHome extends StatefulWidget {
  final VoidCallback
  const SearchBarHome({Key? key}) : super(key: key);

  @override
  State<SearchBarHome> createState() => _SearchBarHomeState();
}

class _SearchBarHomeState extends State<SearchBarHome> {

  TextEditingController _searchCtr = TextEditingController();

  @override
  void dispose() {
    _searchCtr.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomTextFieldNew(
              controller: _searchCtr,
              onChanged: (val) {},
              onFieldSubmitted: (val) {},
              labelText: '',
              hintText: 'Search your favorite course ...',
              obscure: false, iconData: Icons.search,

          ),
        ),
        SizedBox(width: 5.w,),
        InkWell(
          onTap: onTap,
          child: Container(
            width: 50.w,
            height: 50.h,
            margin: EdgeInsets.only(top: 20.h),
            decoration: BoxDecoration(
              color: MyColors.themeColor,
              borderRadius: BorderRadius.circular(16.r)
            ),
            child: Image.asset(AppAssets.filterIcon, height: 22.h, width: 22.w,),
          ),
        )
      ],
    );
  }
}
