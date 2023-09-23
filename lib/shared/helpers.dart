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
