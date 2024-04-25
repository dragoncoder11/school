import 'package:flutter/material.dart';

const kPrimaryOldColor = Color(0xFF6F35A5);
const kPrimaryLightColor = Color(0xFFF1E6FF);
const kPrimarywhiteColor = Color(0xFFFFFFFF);
const kPrimaryColor = Color(0xFF392D5B);
const double defaultPadding = 16.0;
const kPrimarygrayColor = Color(0xFF808080);

abstract class Styles {
  static const TextStyle style25 = TextStyle(
    color: Colors.black,
    fontSize: 25,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
    height: 0,
  );
  static const TextStyle stylegray15 = TextStyle(
    color: kPrimarygrayColor,
    fontSize: 15,
    fontFamily: 'Inter',
    height: 0,
  );

  static const TextStyle style25white = TextStyle(
    color: kPrimarywhiteColor,
    fontSize: 25,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  );

  static const TextStyle style18 = TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    height: 0,
  );

  static const TextStyle styleBold18 = TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    height: 0,
  );
  static const TextStyle styleBold15 = TextStyle(
    color: Colors.black,
    fontSize: 15,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    height: 0,
  );
  static const TextStyle style24 = TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    height: 0,
  );

  static const TextStyle style24white = TextStyle(
    color: kPrimarywhiteColor,
    fontSize: 24,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
    height: 0,
  );

  static TextStyle style20 = TextStyle(
    color: Colors.black.withOpacity(0.800000011920929),
    fontSize: 20,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
    height: 0,
  );

  static const TextStyle style22 = TextStyle(
    color: Colors.black,
    fontSize: 22,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
    height: 0,
  );
}
