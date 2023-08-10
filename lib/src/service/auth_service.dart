import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthService {
  Future<bool> login(String email, String password) async {
    final response = await http.post(
      Uri.parse(
          'http://your-backend-url/login'), // Backend URL'sini buraya ekleyin
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
      Uri.parse(
          'http://your-backend-url/register'), // Backend URL'sini buraya ekleyin
      body: jsonEncode({
        'email': email,
        'password': password,
      }),
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      final message = responseData['message']; // Başarılı mesajı
      print(message);
      return true; // Başarılı kayıt durumu
    } else {
      final responseData = jsonDecode(response.body);
      final message = responseData['message']; // Hata mesajı
      print(message);
      return false; // Başarısız kayıt durumu
    }
  }
}
