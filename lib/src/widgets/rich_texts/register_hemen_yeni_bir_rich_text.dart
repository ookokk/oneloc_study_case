import 'package:flutter/material.dart';

RichText registerHemenYeniBirRichText(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: 28,
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
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
