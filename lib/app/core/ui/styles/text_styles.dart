import 'package:flutter/material.dart';

class TextStyles {
  static TextStyles? _instance;
  // Avoid self isntance
  TextStyles._();
  static TextStyles get i {
    _instance ??= TextStyles._();
    return _instance!;
  }

  String get fontFamily => 'Lora';

  TextStyle get textRegular =>
      TextStyle(fontWeight: FontWeight.normal, fontFamily: fontFamily);
  TextStyle get textMedium =>
      TextStyle(fontWeight: FontWeight.w500, fontFamily: fontFamily);
  TextStyle get textSemiBold =>
      TextStyle(fontWeight: FontWeight.w600, fontFamily: fontFamily);
  TextStyle get textBold =>
      TextStyle(fontWeight: FontWeight.bold, fontFamily: fontFamily);

  TextStyle get textButtonLabel => textSemiBold.copyWith(fontSize: 14);
  TextStyle get textTitle => textBold.copyWith(fontSize: 22);
}

extension TextStylesExtensions on BuildContext {
  TextStyles get textStyles => TextStyles.i;
}
