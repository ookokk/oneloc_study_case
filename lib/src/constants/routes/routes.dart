import 'package:flutter/material.dart';
import 'package:oneloc_study_case/src/view/auth/register_page.dart';
import 'package:oneloc_study_case/src/view/splash/screen1.dart';
import 'package:oneloc_study_case/src/view/splash/splash_page.dart';
import 'package:oneloc_study_case/src/view/state/state_page.dart';
import '../../view/auth/login_page.dart';

final Map<String, WidgetBuilder> routes = {
  '/splash': (context) => const SplashPage(),
  '/screen1': (context) => const Screen1(),
  '/login': (context) => const LoginPage(),
  '/register': (context) => const RegisterPage(),
  '/state': (context) => const StatePage(),
};
