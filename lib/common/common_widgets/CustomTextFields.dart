
import '../common_libs.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final Function(String) onChanged;
  final Function(String) onFieldSubmitted;
  final TextInputType? inputType;
  final bool? obscure;
  final IconData? icon;
  final String? Function(String?)? validatorFn;
  final String labelText;
  final int? maxLines;
  final Widget? trailing;

  const CustomTextField({
    Key? key,
    required this.controller,
    this.hintText,
    required this.onChanged,
    required this.onFieldSubmitted,
    this.inputType,
    this.obscure,
    this.validatorFn,
    this.icon,
    required this.labelText,
    this.maxLines,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.sp),
      margin: EdgeInsets.symmetric(vertical: 5.h),
      decoration: BoxDecoration(
          color: MyColors.textFieldContainerColor,
          borderRadius: BorderRadius.circular(10.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 5.h,
          ),
          Text(
            labelText,
            style: getSemiBoldStyle(
              fontSize: 12.spMin,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0.h),
            child: TextFormField(
              validator: validatorFn ??
                      (val) {
                    if (val!.isEmpty) {
                      return "Please enter some text!";
                    } else {
                      return null;
                    }
                  },
              obscureText: obscure ?? false,
              controller: controller,
              keyboardType: inputType,
              maxLines: maxLines ?? 1,
              style: getRegularStyle(
                  color: Theme.of(context).colorScheme.secondary,fontSize: 12.spMin),
              decoration: InputDecoration(
                contentPadding:
                EdgeInsets.symmetric(horizontal: 10.w, vertical:maxLines!=null?10.h: 0.h),
                suffix: trailing ?? SizedBox.shrink(),
                hintText: hintText ?? "",
                hintStyle: getRegularStyle(color: MyColors.bodyColor,fontSize: 12.spMin),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyColors.bodyColor, width: 1.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyColors.bodyColor, width: 1.0),
                ),
                border: OutlineInputBorder(),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: MyColors.bodyColor, width: 1.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color:
                      Theme.of(context).colorScheme.error.withOpacity(0.2),
                      width: 1.0),
                ),
              ),
              onFieldSubmitted: onFieldSubmitted,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomTextFieldNew extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final Function(String) onChanged;
  final Function(String) onFieldSubmitted;
  final TextInputType? inputType;
  final bool? obscure;
  final IconData? icon;
  final String? Function(String?)? validatorFn;
  final int? maxLines;

  const CustomTextFieldNew({
    Key? key,
    required this.controller,
    this.hintText,
    required this.onChanged,
    required this.onFieldSubmitted,
    this.inputType,
    this.obscure,
    this.validatorFn,
    this.icon,  this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 15.0.h),
      child: TextFormField(
        validator: validatorFn,
        obscureText: obscure??false,
        controller: controller,
        keyboardType: inputType,
        maxLines: maxLines?? 1,
        style: getBoldStyle(fontSize: 12.spMin, color: MyColors.textBlueColor,),
        decoration: InputDecoration(
          fillColor: MyColors.white,
          filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: maxLines != null ? 10: 0),
          hintText: hintText??"",
          hintStyle: getBoldStyle(color: MyColors.textBlueColor,fontSize: 12.spMin),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: const BorderSide(color: MyColors.white, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: const BorderSide(color: MyColors.textBlueColor, width: 1.0),
          ),
          border: OutlineInputBorder(),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide:
            BorderSide(color: MyColors.bodyColor.withOpacity(0.5), width: 1.0),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(
                color: MyColors.bodyColor.withOpacity(0.5),
                width: 1.0),
          ),
        ),
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
      ),
    );
  }
}

class CustomSearchTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Function(String) onChanged;
  final Function(String) onFieldSubmitted;
  final TextInputType? inputType;
  final IconData? icon;
  final Widget? leadingIcon;
  final Function() onTap;
  final String? Function(String?)? validatorFn;

  const CustomSearchTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.onChanged,
    required this.onFieldSubmitted,
    this.inputType,
    this.leadingIcon,
    this.icon, required this.onTap, this.validatorFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0.h),
      child: Container(
        width: double.infinity,
        height: 35.h,
        decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(5.r)),
        child: TextFormField(
          controller: controller,
          keyboardType: inputType,
          style: getMediumStyle(
              color: Theme.of(context).colorScheme.secondary, fontSize: 12.sp),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
            suffixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: IconButton(
                  splashColor: Theme.of(context).scaffoldBackgroundColor,
                  padding: EdgeInsets.zero,
                  constraints: BoxConstraints(),
                  icon: Icon(Icons.search_rounded,color: MyColors.titleColor,size: 18.h,),
                  onPressed: onTap,
                )),
            hintText: hintText,
            hintStyle: getMediumStyle(
                color: Theme.of(context).colorScheme.tertiary, fontSize: 12.sp),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  width: 1.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: BorderSide(
                  color: Theme.of(context)
                      .colorScheme
                      .tertiaryContainer
                      .withOpacity(0.5),
                  width: 2),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: BorderSide(
                  color: Theme.of(context).colorScheme.tertiaryContainer,
                  width: 1.0),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.r),
              borderSide: BorderSide(
                  color: Theme.of(context)
                      .colorScheme
                      .tertiaryContainer
                      .withOpacity(0.2),
                  width: 1.0),
            ),
          ),
          onFieldSubmitted: onFieldSubmitted,
          onChanged: onChanged,
        ),
      ),
    );
  }
}


class CustomTextField2 extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final Function(String) onChanged;
  final Function(String) onFieldSubmitted;
  final TextInputType? inputType;
  final bool? obscure;
  final IconData? icon;
  final String? Function(String?)? validatorFn;
  final String labelText;
  final int? maxLines;

  const CustomTextField2({
    Key? key,
    required this.controller,
    this.hintText,
    required this.onChanged,
    required this.onFieldSubmitted,
    this.inputType,
    this.obscure,
    this.validatorFn,
    this.icon, required this.labelText, this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 15.0.h),
      child: TextFormField(
        validator: validatorFn??(val) {
          if (val!.isEmpty) {
            return "Please enter some text!";
          } else {
            return null;
          }
        },
        obscureText: obscure??false,
        controller: controller,
        keyboardType: inputType,
        maxLines: maxLines?? 1,
        style: getRegularStyle(fontSize: 12.spMin, color: Theme.of(context).colorScheme.secondary),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: maxLines != null ? 10: 0),
          hintText: hintText??"",
          hintStyle: getRegularStyle(color: MyColors.bodyColor,fontSize: 12.spMin),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText:"  $labelText  " ,
          labelStyle: TextStyle(
              color: Theme.of(context).colorScheme.tertiary, fontWeight: FontWeight.w500,fontSize: 12.spMin),
          enabledBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: MyColors.bodyColor.withOpacity(0.5), width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Theme.of(context).primaryColor.withOpacity(0.5), width: 1.0),
          ),
          border: OutlineInputBorder(),
          focusedErrorBorder: OutlineInputBorder(
            borderSide:
            BorderSide(color: MyColors.bodyColor.withOpacity(0.5), width: 1.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: MyColors.bodyColor.withOpacity(0.5),
                width: 1.0),
          ),
        ),
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
      ),
    );
  }
}




class CustomTextFieldWithIcon extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final Function(String) onChanged;
  final Function(String) onFieldSubmitted;
  final TextInputType? inputType;
  final bool? obscure;
  final IconData? icon;
  final String? Function(String?)? validatorFn;
  final Widget? leadingIcon;
  final String labelText;
  final int? maxLines;

  const CustomTextFieldWithIcon({
    Key? key,
    required this.controller,
    this.hintText,
    required this.onChanged,
    required this.onFieldSubmitted,
    this.inputType,
    this.obscure,
    this.validatorFn,
    this.icon, required this.labelText, this.maxLines, this.leadingIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 10.0.h),
      child: TextFormField(
        validator: validatorFn,
        obscureText: obscure??false,
        controller: controller,
        keyboardType: inputType,
        maxLines: maxLines?? 1,
        style: getBoldStyle(fontSize: 12.spMin, color: MyColors.textBlueColor,),
        decoration: InputDecoration(
          fillColor: MyColors.white,
          filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
          suffixIcon: leadingIcon ?? SizedBox.shrink(),
          hintText: hintText??"",
          hintStyle: getBoldStyle(color: MyColors.textBlueColor, fontSize: 12.spMin),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: const BorderSide(color: MyColors.white, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: const BorderSide(color: MyColors.textBlueColor, width: 1.0),
          ),
          border: OutlineInputBorder(),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide:
            BorderSide(color: MyColors.bodyColor.withOpacity(0.5), width: 1.0),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(
                color: MyColors.bodyColor.withOpacity(0.5),
                width: 1.0),
          ),
        ),
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
      ),
    );
  }
}
