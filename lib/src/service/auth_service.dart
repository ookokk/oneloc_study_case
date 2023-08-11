import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  Future<bool> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('http://your-backend-url/login'),
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

  Future<bool> register(String email, String password) async {
    final response = await http.post(
      Uri.parse('http://your-backend-url/register'),
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
}
