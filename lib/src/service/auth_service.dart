import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  final String baseUrl = "https://case.onelocapp.com";

  Future<bool> login(String email, String password) async {
    final response = await http.post(
      Uri.parse(
          '$baseUrl/api/auth/login'), // baseUrl kullanarak URL oluşturuldu
      body: jsonEncode({
        'email': email,
        'password': password,
      }),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      final message = responseData['message'];
      print(message);
      return true;
    } else {
      final responseData = jsonDecode(response.body);
      final message = responseData['message'];
      print(message);
      return false;
    }
  }

  Future<bool> register(String username, String email, String phoneNumber,
      String password) async {
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

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      final message = responseData['message'];
      print(message);
      return true;
    } else {
      final responseData = jsonDecode(response.body);
      final message = responseData['message'];
      print(message);
      return false;
    }
  }
}
