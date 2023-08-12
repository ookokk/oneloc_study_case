import 'package:flutter/material.dart';
import 'package:oneloc_study_case/src/widgets/custom_app_bar.dart';
import 'package:oneloc_study_case/src/widgets/custom_text_form_field.dart';
import 'package:oneloc_study_case/src/widgets/rich_texts/kvkk_rich_text.dart';
import 'package:oneloc_study_case/src/widgets/register_elevated_button.dart';

import '../../service/auth_service.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  bool isLoginSuccessful = false;
  bool isContinueButtonVisible = false;
  double continueButtonWidth = 200.0;
  Color continueButtonColor = Colors.white;
  String continueButtonText = 'Giriş Yap';

  @override
  Widget build(BuildContext context) {
    double kHeight = MediaQuery.of(context).size.height;
    double kWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          text: 'Yeni hesap oluştur',
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 18,
                ),
                buildHemenYeniBirRichText(),
                const SizedBox(
                  height: 28,
                ),
                CustomTextFormField(
                  obscureText: false,
                  hintText: 'Kullanıcı adı',
                  controller: usernameController,
                ),
                const SizedBox(
                  height: 18,
                ),
                CustomTextFormField(
                  obscureText: false,
                  hintText: 'E-posta adresi',
                  controller: emailController,
                ),
                const SizedBox(
                  height: 18,
                ),
                buildPhoneNumberRow(kWidth, kHeight),
                const SizedBox(
                  height: 18,
                ),
                CustomTextFormField(
                  obscureText: true,
                  hintText: 'Şifre',
                  controller: passwordController,
                ),
                const SizedBox(
                  height: 24,
                ),
                RegisterElevatedButton(
                  color: const Color(0xFF0076FF),
                  onTap: () async {
                    final username = usernameController.text.trim();
                    final email = emailController.text.trim();
                    final phoneNumber = phoneNumberController.text;
                    final password = passwordController.text.trim();

                    final authService = AuthService();
                    final success = await authService.register(
                      username,
                      email,
                      phoneNumber,
                      password,
                    );
                    if (success) {
                      setState(() {
                        isLoginSuccessful = true;
                        isContinueButtonVisible = true;
                        continueButtonWidth = 250;
                        continueButtonColor = Colors.green;
                        continueButtonText = 'Devam et ve tamamla';
                      });
                      print('kullanici basariyla olusturuldu');
                    } else {
                      print('hata kullanici olusturulamadi');
                    }
                  },
                  child: const Text(
                    'Hesabı oluştur',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                isLoginSuccessful
                    ? SizedBox(
                        height: 70,
                        child: RegisterElevatedButton(
                          onTap: () {
                            Navigator.pushNamed(context, '/state');
                          },
                          color: const Color(0xFF00B2A4),
                          child: Text(
                            continueButtonText,
                            style: const TextStyle(fontSize: 22),
                          ),
                        ),
                      )
                    : RegisterElevatedButton(
                        color: Colors.white,
                        onTap: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: const Text(
                          'Giriş Yap',
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        )),
                const SizedBox(
                  height: 28,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: kvkkRichText(context),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildPhoneNumberRow(double kWidth, double kHeight) {
    return Row(
      children: [
        SizedBox(
          width: kWidth * 0.3,
          height: kHeight * 0.075,
          child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Container(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Color(0xFF525252)
                    : Colors.grey[200],
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          'assets/images/flag.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        '+90',
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? Colors.white
                                    : Colors.black),
                      ),
                    ),
                  ],
                ),
              )),
        ),
        const SizedBox(
          width: 8,
        ),
        SizedBox(
          width: kWidth * 0.65 - 8,
          child: CustomTextFormField(
            obscureText: false,
            hintText: 'Telefon Numarası',
            controller: phoneNumberController,
          ),
        ),
      ],
    );
  }

  RichText buildHemenYeniBirRichText() {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: 28,
          color: Theme.of(context).brightness == Brightness.dark
              ? Colors.white // Koyu tema için metin rengi
              : Colors.black, // Diğer durumlar için metin rengi
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
        children: <TextSpan>[
          TextSpan(text: 'Hemen yeni bir hesap oluştur ve en iyi '),
          TextSpan(
            text: 'deneyimi yaşa!',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
