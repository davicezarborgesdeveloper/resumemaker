import 'package:flutter/material.dart';

// ignore: camel_case_types
enum sizeScreen {
  smallMobile(360, 600, 'Small Mobile'),
  mediumMobile(400, 720, 'Medium Mobile'),
  largeMobile(480, 840, 'Large Mobile'),
  extraLargeMobile(600, 960, 'Extra Large Mobile'),
  smallTablet(720, 1024, 'Small Tablet'),
  largeTablet(840, 1280, 'Large Tablet'),
  desktop(1440, 900, 'Desktop'),
  redmi8(392.72727272727275, 803.6363636363636, 'RedmiNote8');

  final double width;
  final double height;
  final String indetifier;

  const sizeScreen(this.width, this.height, this.indetifier);

  static sizeScreen parse(String indetifier) {
    return values.firstWhere((s) => s.indetifier == indetifier);
  }

  static Size parseSize(String indetifier) {
    final value = values.firstWhere((s) => s.indetifier == indetifier);
    return Size(value.width * 1.3, value.height * 1.3);
  }
}

enum Language {
  portugues('Português', 'pt'),
  espanhol('Espanhol', 'es'),
  ingles('Inglês', 'en'),
  italiano('Italiano', 'it'),
  frances('Francês', 'fr');

  final String title;
  final String acronomyn;
  const Language(this.title, this.acronomyn);

  static Language parse(String acronomyn) =>
      values.firstWhere((s) => s.acronomyn == acronomyn);
}
