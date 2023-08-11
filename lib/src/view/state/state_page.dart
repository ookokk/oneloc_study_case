import 'package:flutter/material.dart';

class StatePage extends StatelessWidget {
  const StatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
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
              height: 60,
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
              height: 30,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        title: Center(
          child: Image.asset(
            'assets/images/oneloc_icon_appBar.png',
            height: 40,
          ),
        ),
      ),
    ));
  }
}
