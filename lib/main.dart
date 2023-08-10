import 'package:flutter/material.dart';
import 'package:oneloc_study_case/src/view/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SplashPage();
  }
}
