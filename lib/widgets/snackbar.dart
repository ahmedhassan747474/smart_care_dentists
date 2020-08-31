import 'package:flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';

class CustomSnackBar {
  void showSnackBar(BuildContext context, String text) {
    Flushbar(
      message: text,
      duration: Duration(seconds: 3),
    )..show(context);
  }
}
