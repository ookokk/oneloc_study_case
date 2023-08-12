import 'package:flutter/material.dart';
import 'package:oneloc_study_case/src/view/splash/splash_page.dart';
import 'src/constants/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

//screen1 alignları düzelt responsive
//registerpage widget isimleri ve kullanıcı alertdialog
//state page yükseklikler pixel olarak verilmiş bunu responsive
//register elevated button responsive yap
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
    );
  }
}
