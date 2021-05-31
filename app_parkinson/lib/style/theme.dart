import 'dart:ui';

import 'package:flutter/cupertino.dart';

class Colors {

  const Colors();

  static const Color loginGradientStart = const Color(0xFFccfff5);
  static const Color loginGradientEnd = const Color(0xFF66ccff);
    static const Color toggleRed = const Color(0xFFe60000);
  static const Color togleBlue = const Color(0xFF00cc99);

  static const primaryGradient = const LinearGradient(
    colors: const [loginGradientStart, loginGradientEnd],
    stops: const [0.0, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}