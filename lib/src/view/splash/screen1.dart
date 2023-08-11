import 'package:flutter/material.dart';
import 'package:oneloc_study_case/src/widgets/register_elevated_button.dart';

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
                    child: Image.asset(
                      'assets/images/yeni_hesap_text.png',
                      width: 180,
                    ),
                    color: Colors.white,
                    onTap: () {}),
                const SizedBox(
                  height: 20,
                ),
                RegisterElevatedButton(
                    child: Text(
                      'Giriş Yap',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 18),
                    ),
                    color: Colors.transparent.withOpacity(0),
                    onTap: () {}),
                const SizedBox(
                  height: 70,
                ),
                Image.asset('assets/images/kvkk_text.png')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
