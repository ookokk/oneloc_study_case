import 'package:flutter/material.dart';
import 'package:oneloc_study_case/src/constants/my_app_strings.dart';
import 'package:oneloc_study_case/src/widgets/custom_elevated_button.dart';
import 'package:oneloc_study_case/src/widgets/rich_texts/screen1_kvkk_rich_text.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/images/background.png",
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
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
                      height: 70,
                    ),
                    Align(
                        alignment: const Alignment(-1.6, -0.5),
                        child: Image.asset(
                          'assets/images/screen1_text.png',
                          height: 120,
                          width: 330,
                        )),
                    const SizedBox(
                      height: 120,
                    ),
                    CustomElevatedButton(
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
                    CustomElevatedButton(
                        color: Colors.transparent.withOpacity(0),
                        onTap: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: const Text(
                          MyAppStrings.screen1Login,
                          style: TextStyle(fontFamily: 'Roboto', fontSize: 18),
                        )),
                    const SizedBox(
                      height: 70,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: screen1KvkkRichText(),
                        )),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
