// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:oneloc_study_case/src/constants/my_app_strings.dart';
import 'package:oneloc_study_case/src/widgets/custom_app_bar.dart';
import 'package:oneloc_study_case/src/widgets/custom_text_form_field.dart';
import 'package:oneloc_study_case/src/widgets/register_elevated_button.dart';
import '../../service/auth_service.dart';
import '../../widgets/rich_texts/hosgeldin_rich_text.dart';
import '../../widgets/rich_texts/kvkk_rich_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

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
              hosgeldinRichText(context),
              const SizedBox(
                height: 50,
              ),
              CustomTextFormField(
                obscureText: false,
                hintText: MyAppStrings.registerPhoneNumber,
                controller: emailController,
              ),
              const SizedBox(
                height: 28,
              ),
              CustomTextFormField(
                obscureText: true,
                hintText: MyAppStrings.loginCreateNewAccount,
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
              buildYeniHesapRegisterElevatedButton(context),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: kvkkRichText(context),
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
        text: MyAppStrings.screen1Login,
      ),
    ));
  }

  RegisterElevatedButton buildYeniHesapRegisterElevatedButton(
      BuildContext context) {
    return RegisterElevatedButton(
      color: Theme.of(context).brightness == Brightness.dark
          ? const Color(0xFF525252) // Dark Theme Color
          : Colors.white, // Light Theme Color
      onTap: () {
        Navigator.pushNamed(context, '/register');
      },
      child: Text(
        MyAppStrings.loginCreateNewAccount,
        style: TextStyle(
          fontSize: 22,
          color: Theme.of(context).brightness == Brightness.dark
              ? Colors.white
              : Colors.black,
        ),
      ),
    );
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
          Navigator.pushNamed(context, '/state');
        } else {
          setState(() {
            _errorMessage = 'Kullanıcı girişi hatalı';
          });

          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text(MyAppStrings.loginErrorTitle),
                content: Text(_errorMessage),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text(MyAppStrings.loginErrorOkay),
                  ),
                ],
              );
            },
          );
        }
      },
      child: const Text(
        MyAppStrings.screen1Login,
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
          MyAppStrings.loginForgotPassword,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Icon(
          Icons.arrow_forward_ios,
          size: 18,
        )
      ],
    );
  }
}
