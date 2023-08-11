import 'package:flutter/material.dart';
import 'package:oneloc_study_case/src/view/auth/register_page.dart';
import 'package:oneloc_study_case/src/view/splash/screen1.dart';
import 'package:oneloc_study_case/src/view/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: RegisterPage(),
    );
  }
}
