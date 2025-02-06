import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Constants/Appconstants.dart';
import '../Validation/Appvalidation.dart';
import '../ViewModels/UserViewModels.dart';
import '../Widgets/ProfileWidgets.dart';
import '../Widgets/TextFormWidgets.dart';

class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({super.key});

  final RegistrationController controller = Get.put(RegistrationController());
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController roleController =
      TextEditingController(text: 'admin');
  final TextEditingController mobileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: controller.formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ProfileAvatar(
                  imagePath: AppConstants.defaultProfileImage,
                  radius: AppConstants.defaultAvatarRadius,
                  onCameraTap: () {
                    print("Camera button tapped!");
                  },
                ),
                SizedBox(height: 15),
                TextFormWidget(
                  input: emailController,
                  labelTextInput: 'Email',
                  validatorFunction: Validation.validateName,
                ),
                SizedBox(height: 15),
                TextFormWidget(
                  input: passwordController,
                  labelTextInput: 'Password',
                  validatorFunction: Validation.validateEmail,
                ),
                SizedBox(height: 15),
                TextFormWidget(
                  input: roleController,
                  labelTextInput: 'Role',
                  validatorFunction: Validation.validatePassword,
                ),
                SizedBox(height: 15),
                TextFormWidget(
                  input: mobileController,
                  labelTextInput: 'Mobile No',
                  validatorFunction: Validation.validatePassword,
                ),
                SizedBox(height: 15),
                Obx(() {
                  return controller.isLoading.value
                      ? CircularProgressIndicator()
                      : MaterialButton(
                          onPressed: () {
                            if (controller.formKey.currentState?.validate() ?? false) {
                              controller.registerUser(
                                  email: emailController.text,
                                  password: passwordController.text,
                                  role: roleController.text,
                                  phoneNumber: mobileController.text);
                            }
                          },
                          color: AppConstants.buttonButtonColor,
                          child: Text(
                            'Register',
                            style: AppConstants.buttonTextStyle,
                          ),
                        );
                }),
                SizedBox(height: 10),
                Obx(() {
                  if(controller.errorMessage.isNotEmpty){
                    return Text(
                      controller.errorMessage.value,
                      style: TextStyle(color: Colors.red),
                    );
                  }
                  if (controller.user.value?.email != null) {
                    return Text(
                      'User Registered: ${controller.user.value!.email}',
                      style: TextStyle(color: Colors.red),
                    );
                  }
                  return SizedBox();
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
