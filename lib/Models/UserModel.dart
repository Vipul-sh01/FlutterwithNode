class User {
  final String userId;
  final String email;
  final String phoneNumber;
  final bool otpVerified;
  final bool isEmailVerified;
  final bool isPhoneVerified;
  final String role;
  final String createdAt;
  final String updatedAt;

  User({
    required this.userId,
    required this.email,
    required this.phoneNumber,
    required this.otpVerified,
    required this.isEmailVerified,
    required this.isPhoneVerified,
    required this.role,
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json['userid'],
      email: json['email'],
      phoneNumber: json['phoneNumber'],
      otpVerified: json['otpVerified'],
      isEmailVerified: json['isEmailVerified'],
      isPhoneVerified: json['isPhoneVerified'],
      role: json['role'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }
}

class ApiResponse {
  final bool success;
  final String message;
  final User data;

  ApiResponse({
    required this.success,
    required this.message,
    required this.data,
  });

  factory ApiResponse.fromJson(Map<String, dynamic> json) {
    return ApiResponse(
      success: json['success'],
      message: json['message'],
      data: User.fromJson(json['data']),
    );
  }
}
