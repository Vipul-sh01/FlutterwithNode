import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Models/UserModel.dart';


class RegistrationService {
  final String apiUrl = 'https://68af-103-226-200-37.ngrok-free.app/api/v1/User/register';

  Future<ApiResponse> registerUser({
    required String email,
    required String password,
    required String role,
    required String phoneNumber,
  }) async {
    final response = await http.post(
      Uri.parse(apiUrl),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'email': email,
        'password': password,
        'role': role,
        'phoneNumber': phoneNumber,
      }),
    );

    if (response.statusCode == 201) {
      print(response.body);
      return ApiResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to register user: ${response.body}');
    }
  }
}
