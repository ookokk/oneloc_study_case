import 'package:flutter/material.dart';

RichText registerHemenYeniBirRichText(BuildContext context) {
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
      children: const <TextSpan>[
        TextSpan(text: 'Hemen yeni bir hesap oluştur ve en iyi '),
        TextSpan(
          text: 'deneyimi yaşa!',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
