import 'package:firebaseandgetx/Constants/Appconstants.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SnackbarUtils {
  static void showSnackbar({
    required String title,
    required String message,
    required Color backgroundColor,
  }) {
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: backgroundColor,
      colorText: AppConstants.textColor,
    );
  }

  static void showSuccess(String message) {
    showSnackbar(
      title: "Success",
      message: message,
      backgroundColor: AppConstants.snackBarColor,
    );
  }

  static void showError(String message) {
    showSnackbar(
      title: "Error",
      message: message,
      backgroundColor: AppConstants.snackBarSecColor,
    );
  }
}
