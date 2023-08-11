import 'package:flutter/material.dart';

class ErrorProvider extends ChangeNotifier {
  String _errorMessage = '';

  String get errorMessage => _errorMessage;

  void setErrorMessage(String message) {
    _errorMessage = message;
    notifyListeners();
  }
}
