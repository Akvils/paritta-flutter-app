import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColors {
  static const mainColor = Color(0XFFe5eefc);
  static const styleColor = Color(0XFF6f7e96);
  static const activeColor = Color(0XFFd0ddf3);
  static const lightBlue = Color(0XFF92aeff);
  static const darkBlue = Color(0XFF5880ff);
  static const lightBlueShadow = Color(0XAA92aeff);
}

const kTitleTextStyle = TextStyle(
  color: AppColors.styleColor,
  fontFamily: 'Montserrat',
//  fontWeight: FontWeight.bold,
  fontSize: 20,
);

const kTitlePlayingStyle = TextStyle(
  color: AppColors.styleColor,
  fontFamily: 'Montserrat',
//  fontWeight: FontWeight.bold,
  fontSize: 24,
  height: 2,
);

const kCardTitleStyle = TextStyle(
  color: AppColors.styleColor,
  fontFamily: 'Montserrat',
  fontSize: 16,
);

const kSubtitleStyle = TextStyle(
  color: AppColors.styleColor,
//  fontFamily: 'Montserrat',
  fontSize: 14,
);

const kDayStyle = TextStyle(
  color: AppColors.darkBlue,
//  fontFamily: 'Montserrat',
  fontSize: 14,
);

const kSuttaStyle = TextStyle(
  color: Color(0xFF263238),
  fontFamily: 'NotoSerif',
  fontSize: 15,
  fontStyle: FontStyle.italic,
);

const kTranslationStyle = TextStyle(
  color: Color(0xFF37474F),
  fontFamily: 'NotoSerif',
  fontSize: 15,
);
