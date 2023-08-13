import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  final String baseUrl = "https://case.onelocapp.com";
  late String responseMessage; // Gelen mesajı tutacak alan

  bool _processResponse(http.Response response) {
    final responseData = jsonDecode(response.body);
    responseMessage =
        responseData['message']; // Gelen mesajı responseMessage'e ata
    print(responseMessage);
    return response.statusCode == 200;
  }

  Future<bool> login(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/api/auth/login'),
        body: jsonEncode({
          'email': email,
          'password': password,
        }),
        headers: {'Content-Type': 'application/json'},
      );
      return _processResponse(response);
    } catch (error) {
      print("Login error: $error");
      return false;
    }
  }

  Future<bool> register(String username, String email, String phoneNumber,
      String password) async {
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/api/auth/register'),
        body: jsonEncode({
          'username': username,
          'email': email,
          'phoneNumber': phoneNumber,
          'password': password,
        }),
        headers: {'Content-Type': 'application/json'},
      );
      return _processResponse(response);
    } catch (error) {
      print("Register error: $error");
      return false;
    }
  }
}
