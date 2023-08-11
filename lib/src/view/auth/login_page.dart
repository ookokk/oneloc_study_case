import 'package:flutter/material.dart';
import 'package:oneloc_study_case/src/widgets/custom_app_bar.dart';
import 'package:oneloc_study_case/src/widgets/custom_text_form_field.dart';
import 'package:oneloc_study_case/src/widgets/register_elevated_button.dart';

import '../../widgets/kvkk_rich_text.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              buildHosgeldinRichText(),
              const SizedBox(
                height: 50,
              ),
              CustomTextFormField(
                hintText: 'E-posta adresi',
                controller: emailController,
              ),
              const SizedBox(
                height: 28,
              ),
              CustomTextFormField(
                hintText: 'Şifre',
                controller: passwordController,
              ),
              const SizedBox(
                height: 34,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Şifremi Unuttum',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  )
                ],
              ),
              const SizedBox(
                height: 34,
              ),
              RegisterElevatedButton(
                  color: const Color(0xFF0076FF),
                  onTap: () {},
                  child: const Text(
                    'Giriş Yap',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  )),
              const SizedBox(
                height: 34,
              ),
              RegisterElevatedButton(
                  color: Colors.white,
                  onTap: () {},
                  child: const Text(
                    'Yeni hesap oluştur',
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  )),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: kvkkRichText(Colors.black),
                  )),
                ],
              )
            ],
          ),
        ),
      ),
      appBar: CustomAppBar(
        onPressed: () {
          Navigator.pop(context);
        },
        text: 'Giriş Yap',
      ),
    ));
  }

  RichText buildHosgeldinRichText() {
    return RichText(
      text: const TextSpan(
        style: TextStyle(
          fontSize: 28,
          color: Colors.black,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
        children: <TextSpan>[
          TextSpan(text: 'En iyi deneyimlerin merkezi Oneloc’a '),
          TextSpan(
            text: 'hoş geldin!',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
