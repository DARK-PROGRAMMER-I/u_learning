import '../../../common/common_libs.dart';


class ImageCard extends StatelessWidget {
  final String imagePath;
  const ImageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/reading.png'),
        SizedBox(height: 20.h,),
        Text('First See Learning', style: getSemiBoldStyle(
          fontSize: MyFonts.size26,
        ),),
        SizedBox(height: 15.h,),
        Container(
          constraints: BoxConstraints(
              maxWidth: 300.w
          ),
          child: Text(
            'Forget about a for off paper all knowledge in one learning',
            textAlign: TextAlign.center,
            style: getRegularStyle(
                fontSize: MyFonts.size16,
                color: MyColors.bluishGreyColor
            ),),
        ),
      ],
    );
  }
}
