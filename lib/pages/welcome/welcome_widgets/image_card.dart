import '../../../common/common_libs.dart';


class ImageCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  const ImageCard({Key? key, required this.imagePath, required this.title, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imagePath),
        SizedBox(height: 20.h,),
        Text(title, style: getSemiBoldStyle(
          fontSize: MyFonts.size26,
        ),),
        SizedBox(height: 15.h,),
        Container(
          constraints: BoxConstraints(
              maxWidth: 300.w
          ),
          child: Text(
            description,
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
