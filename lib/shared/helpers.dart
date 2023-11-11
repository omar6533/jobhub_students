import 'package:flutter/material.dart';
import 'package:get/get.dart';

SnackbarController showMessage(
    {required String title, String? message, Color? color, int? duration}) {
  return Get.snackbar(
    title,
    message ?? '',
    backgroundColor: color ?? Colors.red,
    snackPosition: SnackPosition.TOP,
    duration: Duration(seconds: duration ?? 1),
  );
}

showLoaderDialog(BuildContext context) {
  showDialog(
    barrierDismissible: false,
    context: context,
    barrierColor: Colors.black26,
    builder: (BuildContext context) {
      return const AlertDialog(
        elevation: 0,
        backgroundColor: Colors.transparent,
        content: Center(
          child: Stack(
            children: [
              CircularProgressIndicator(),
            ],
          ),
        ),
      );
    },
  );
}

dismissLoaderDialog(BuildContext context) {
  try {
    Navigator.of(context, rootNavigator: true).pop();
  } catch (e) {
    print(e);
  }
}
