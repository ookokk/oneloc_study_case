import 'package:flutter/material.dart';

RichText screen1KvkkRichText() {
  const textColor = Colors.white;

  return RichText(
    text: const TextSpan(
      style: TextStyle(
        fontSize: 17,
        color: textColor,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w300,
      ),
      children: <TextSpan>[
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
