import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Constants/Appconstants.dart';


class CameraButton extends StatelessWidget {
  final VoidCallback? onTap;

  const CameraButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipOval(
        child: Container(
          padding: AppConstants.cameraButtonPadding,
          decoration: BoxDecoration(
            color: AppConstants.cameraButtonColor,
            shape: BoxShape.circle,
            boxShadow: AppConstants.cameraButtonShadow,
          ),
          child: Icon(
            Icons.edit,
            color: Colors.white,
            size: AppConstants.cameraIconSize,
          ),
        ),
      ),
    );
  }
}