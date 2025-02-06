import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../Models/UserModel.dart';
import '../Services/ApiServices.dart';


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
    try {
      isLoading(true);  // Show loading indicator

      ApiResponse response = await _registrationService.registerUser(
        email: email,
        password: password,
        role: role,
        phoneNumber: phoneNumber,
      );

      if (response.success) {
        user.value = response.data;
        errorMessage.value = "";
      } else {
        errorMessage.value = response.message;
      }
    } catch (e) {
      errorMessage.value = 'Error: $e';
    } finally {
      isLoading(false);  // Hide loading indicator
    }
  }
}
