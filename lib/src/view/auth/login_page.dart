import 'package:flutter/material.dart';
import 'package:oneloc_study_case/src/widgets/custom_app_bar.dart';
import 'package:oneloc_study_case/src/widgets/custom_text_form_field.dart';
import 'package:oneloc_study_case/src/widgets/register_elevated_button.dart';

import '../../service/auth_service.dart';
import '../../widgets/kvkk_rich_text.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String _errorMessage = '';

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
                obscureText: false,
                hintText: 'E-posta adresi',
                controller: emailController,
              ),
              const SizedBox(
                height: 28,
              ),
              CustomTextFormField(
                obscureText: true,
                hintText: 'Şifre',
                controller: passwordController,
              ),
              const SizedBox(
                height: 34,
              ),
              buildForgotPasswordRow(),
              const SizedBox(
                height: 34,
              ),
              buildSignInRegisterElevatedButton(context),
              const SizedBox(
                height: 34,
              ),
              RegisterElevatedButton(
                  color: Colors.white,
                  onTap: () {
                    Navigator.pushNamed(context, '/login');
                  },
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

  RegisterElevatedButton buildSignInRegisterElevatedButton(
      BuildContext context) {
    return RegisterElevatedButton(
      color: const Color(0xFF0076FF),
      onTap: () async {
        final authService = AuthService();
        final email = emailController.text;
        final password = passwordController.text;

        final success = await authService.login(email, password);

        if (success) {
          print('kullanici girisi basarili');
        } else {
          setState(() {
            _errorMessage = 'Kullanıcı girişi hatalı';
          });

          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Hata'),
                content: Text(_errorMessage),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Tamam'),
                  ),
                ],
              );
            },
          );
        }
      },
      child: const Text(
        'Giriş Yap',
        style: TextStyle(
          fontSize: 24,
        ),
      ),
    );
  }

  Row buildForgotPasswordRow() {
    return const Row(
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
    );
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
