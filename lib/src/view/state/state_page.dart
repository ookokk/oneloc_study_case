import 'package:flutter/material.dart';
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
                'Bilgilerin inceleniyor',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    fontFamily: 'Roboto'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Oneloc ekibi vermiş olduğun bilgileri inceliyor. '
                'Onaylandıktan sonra bir bildirim alacaksın ve hesabını kullanmaya başlatabileceksin.',
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
                    'Çıkış yap',
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
                  'Vazgeçtim, bilgilerimi tamamen sil',
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
            ? Color(0xFF525252)
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
