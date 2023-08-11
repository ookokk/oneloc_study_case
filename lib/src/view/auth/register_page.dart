import 'package:flutter/material.dart';
import 'package:oneloc_study_case/src/widgets/custom_app_bar.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          onPressed: () {},
          child: Text('Yeni hesap oluştur'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
