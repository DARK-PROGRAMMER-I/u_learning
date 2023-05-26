
import '../common_libs.dart';

// void showToast({required String msg, Color? textColor, Color? backgroundColor}) {
//   Fluttertoast.showToast(
//     msg: msg,
//     toastLength: Toast.LENGTH_SHORT,
//     gravity: ToastGravity.SNACKBAR,
//     timeInSecForIosWeb: 1,
//     backgroundColor: backgroundColor?? Colors.white,
//     textColor: textColor ?? Colors.black,
//     fontSize: 12.spMin,
//   );
// }

showSnackBar(BuildContext context, String content){
  ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(content,style: getRegularStyle(fontSize: 12.spMin,color: Colors.white),),
      )
  );
}