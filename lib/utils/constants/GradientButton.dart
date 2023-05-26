

import '../../common/common_libs.dart';

class CustomGradientButton extends StatelessWidget {
  const CustomGradientButton({
    super.key,
    required this.onPressed,
    required this.buttonText,
    this.isLoading = false,
    this.backColor,
    this.textColor,
    this.buttonWidth,
    this.buttonHeight,
    this.fontSize,
    this.padding, this.borderRadius,
  });
  final Function()? onPressed;
  final String buttonText;
  final bool isLoading;
  final Color? backColor;
  final Color? textColor;
  final double? buttonWidth;
  final double? buttonHeight;
  final double? fontSize;
  final double? padding;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonHeight,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: MyColors.shadowColor,
              blurRadius: 32.spMax,
              offset: Offset(0, 12.h)
          ),
        ],
        gradient: LinearGradient(
          colors: [
            MyColors.themeColor,
            MyColors.themeLightColor,
          ],
        ),
        borderRadius: BorderRadius.circular(borderRadius??20.r)
      ),
      margin: EdgeInsets.symmetric(vertical: padding ?? 10.h),
      child: RawMaterialButton(
        elevation: 2,
        // fillColor: backColor ?? Theme.of(context).primaryColor,
        onPressed: onPressed,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius??20.r),
        ),
        child: SizedBox(
          // padding: EdgeInsets.symmetric(vertical: 10.h),
          width: buttonWidth ?? double.infinity,
          height: buttonHeight ?? 56.h,
          child: Center(
              child: isLoading
                  ? const LoadingWidget(
                color: MyColors.white,
              )
                  : Text(
                buttonText,
                style: getMediumStyle(
                    color: textColor ?? Colors.white,
                    fontSize: fontSize ?? 14.spMin),
              )),
        ),
      ),
    );
  }
}
