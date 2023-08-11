import 'dart:convert';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class UserRepository {
  final Router _router = Router();

  UserRepository() {
    _router.get('/', _handleRoot);
    _router.post('/register', _handleRegister);
    _router.post('/login', _handleLogin);
  }

  Response _handleRoot(Request request) {
    return Response.ok('Welcome to My Backend');
  }

  Future<Response> _handleLogin(Request request) async {
    try {
      await request.readAsString();
      return Response.ok(jsonEncode({"message": "Login successful"}));
    } catch (e) {
      return Response.forbidden('Login failed');
    }
  }

  Future<Response> _handleRegister(Request request) async {
    try {
      await request.readAsString();
      return Response.ok(jsonEncode({"message": "Registration successful"}));
    } catch (e) {
      return Response.internalServerError(body: 'Error during registration');
    }
  }

  Router get router => _router;
}
