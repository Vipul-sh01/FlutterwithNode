import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Constants/Appconstants.dart';
import 'CameraWidgets.dart';

class ProfileAvatar extends StatelessWidget {
  final String imagePath;
  final double radius;
  final VoidCallback? onCameraTap;

  const ProfileAvatar({
    super.key,
    required this.imagePath,
    this.radius = AppConstants.defaultAvatarRadius,
    this.onCameraTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: radius,
          backgroundImage: imagePath.isNotEmpty ? AssetImage(imagePath) : null,
          child: imagePath.isEmpty ? AppConstants.defaultProfileIcon : null,
        ),
        Positioned(
          bottom: 5,
          right: 5,
          child: CameraButton(onTap: onCameraTap),
        ),
      ],
    );
  }
}