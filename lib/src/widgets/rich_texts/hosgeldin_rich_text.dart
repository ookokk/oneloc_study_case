import 'package:flutter/material.dart';

RichText hosgeldinRichText(BuildContext context) {
  final textColor = Theme.of(context).brightness == Brightness.dark
      ? Colors.white // Koyu tema için metin rengi
      : Colors.black; // Diğer durumlar için metin rengi

  return RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: 28,
        color: textColor,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
      ),
      children: const <TextSpan>[
        TextSpan(text: 'En iyi deneyimlerin merkezi Oneloc’a '),
        TextSpan(
          text: 'hoş geldin!',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
