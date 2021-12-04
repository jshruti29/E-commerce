import 'package:fluttertoast/fluttertoast.dart';

class Toast {
  static void ShowToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      gravity: ToastGravity.BOTTOM,
    );
  }
}
