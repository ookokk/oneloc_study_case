import 'package:flutter/material.dart';

RichText kvkkRichText(BuildContext context) {
  final textColor = Theme.of(context).brightness == Brightness.dark
      ? Colors.white // Koyu tema için metin rengi
      : Colors.black; // Diğer durumlar için metin rengi

  return RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: 17,
        color: textColor,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w300,
      ),
      children: const <TextSpan>[
        TextSpan(
            text: 'Oneloc’un mobil uygulamasına giriş yapan kullanıcılar '),
        TextSpan(
          text: 'Gizlilik Politikası',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline),
        ),
        TextSpan(text: '’na ve '),
        TextSpan(
          text: 'Şartlar ve Koşullar',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline),
        ),
        TextSpan(text: '’a tabidir.'),
      ],
    ),
  );
}
