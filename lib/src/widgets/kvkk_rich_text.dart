import 'package:flutter/material.dart';

RichText kvkkRichText(Color color) {
  return RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: 17,
        color: color,
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
