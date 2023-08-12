import 'package:flutter/material.dart';
import 'package:oneloc_study_case/src/constants/my_app_strings.dart';
import 'package:oneloc_study_case/src/widgets/register_elevated_button.dart';

class StatePage extends StatelessWidget {
  const StatePage({Key? key}) : super(key: key);

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
                height: 70,
              ),
              Center(
                  child: Image.asset(
                'assets/images/onelocimg_vector.png',
                height: 280,
              )),
              const SizedBox(
                height: 40,
              ),
              const Text(
                MyAppStrings.stateYourInformation,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    fontFamily: 'Roboto'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                MyAppStrings.stateYourInfoNotification,
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              RegisterElevatedButton(
                  color: const Color(0xFFFD0000),
                  onTap: () {},
                  child: const Text(
                    MyAppStrings.stateLogOut,
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                height: 20,
              ),
              RegisterElevatedButton(
                color: Colors.transparent,
                onTap: () {},
                child: Text(
                  MyAppStrings.stateDeleteMyInformation,
                  style: TextStyle(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black,
                    fontSize: 22,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? const Color(0xFF525252)
            : Colors.white,
        title: Center(
          child: Image.asset(
            'assets/images/oneloc_icon_appBar.png',
            height: 45,
          ),
        ),
      ),
    ));
  }
}
