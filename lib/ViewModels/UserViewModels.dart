import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../Models/UserModel.dart';
import '../Services/ApiServices.dart';
import '../Utility/Snackbars/snackbarutils.dart';


class RegistrationController extends GetxController {
  var isLoading = false.obs;
  var errorMessage = ''.obs;
  var user = Rx<User?>(null);
  final formKey = GlobalKey<FormState>();

  final RegistrationService _registrationService = RegistrationService();

  Future<void> registerUser({
    required String email,
    required String password,
    required String role,
    required String phoneNumber,
  }) async {
    isLoading(true);
    try {
      ApiResponse response = await _registrationService.registerUser(
        email: email,
        password: password,
        role: role,
        phoneNumber: phoneNumber,
      );

      if (response.success) {
        user.value = response.data as User?;
        errorMessage.value = "";
        SnackbarUtils.showSuccess(response.message ?? "User registered successfully!");
      } else {
        _handleError(response.message);
      }
    } catch (e) {
      _handleError("Unexpected error: $e");
    } finally {
      isLoading(false);
    }
  }

  void _handleError(String? message) {
    errorMessage.value = message ?? "An unexpected error occurred.";
    SnackbarUtils.showError(errorMessage.value);
  }
}
