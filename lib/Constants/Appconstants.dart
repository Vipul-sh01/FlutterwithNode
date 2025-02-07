import 'package:flutter/material.dart';

class AppConstants {
  
  static const String defaultProfileImage = "";  

  // Default Avatar Settings
  static const double defaultAvatarRadius = 60.0;
  static const Icon defaultProfileIcon = Icon(Icons.person, size: 50);

  // Camera Button Styling
  static const Color cameraButtonColor = Colors.grey;
  static const Color buttonButtonColor = Colors.blueAccent;
  static const Color snackBarColor = Colors.green;
  static const Color snackBarSecColor = Colors.red;
  static const Color textColor = Colors.white;


  static const double cameraIconSize = 24.0;
  static const EdgeInsets cameraButtonPadding = EdgeInsets.all(6);

  // Shadow effect for camera button
  static const List<BoxShadow> cameraButtonShadow = [
    BoxShadow(
      color: Colors.black26,
      blurRadius: 5,
      spreadRadius: 2,
    ),
  ];

  // Default TextStyles for general use across the app
  static const TextStyle defaultTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );

  static const TextStyle headingTextStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle subheadingTextStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: Colors.grey,
  );

  static const TextStyle buttonTextStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.white, // Typically white for buttons
  );

  // Common Padding Values
  static const EdgeInsets commonPadding = EdgeInsets.all(16);
  static const EdgeInsets commonHorizontalPadding = EdgeInsets.symmetric(horizontal: 16);
  static const EdgeInsets commonVerticalPadding = EdgeInsets.symmetric(vertical: 16);

  // Common BorderRadius
  static const BorderRadius commonBorderRadius = BorderRadius.all(Radius.circular(12));
}
