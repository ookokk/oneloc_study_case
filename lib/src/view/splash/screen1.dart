import 'package:flutter/material.dart';
import 'package:oneloc_study_case/src/widgets/register_elevated_button.dart';

import '../../widgets/rich_texts/kvkk_rich_text.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              "assets/images/background.png",
              fit: BoxFit.fill,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Align(
                    alignment: const Alignment(-0.8, 0.5),
                    child: Image.asset(
                      'assets/images/onelocbusiness_logo.png',
                      height: 47,
                      width: 150,
                    )),
                const SizedBox(
                  height: 50,
                ),
                Align(
                    alignment: const Alignment(-1.6, -0.5),
                    child: Image.asset(
                      'assets/images/screen1_text.png',
                      height: 120,
                      width: 350,
                    )),
                const SizedBox(
                  height: 150,
                ),
                RegisterElevatedButton(
                    color: Colors.white,
                    onTap: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: Image.asset(
                      'assets/images/yeni_hesap_text.png',
                      width: 180,
                    )),
                const SizedBox(
                  height: 20,
                ),
                RegisterElevatedButton(
                    color: Colors.transparent.withOpacity(0),
                    onTap: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Text(
                      'Giriş Yap',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 18),
                    )),
                const SizedBox(
                  height: 70,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: kvkkRichText(context),
                    )),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
