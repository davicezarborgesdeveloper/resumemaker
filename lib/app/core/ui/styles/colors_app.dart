import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;
  ColorsApp._();
  static ColorsApp get i {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primary => const Color(0xFF70082D);
  Color get primaryLightest => const Color(0xFFFFD9DE);
  Color get error => const Color(0xFFC72536);
  Color get background => Colors.white;

  Color get secondary => Colors.amberAccent.shade700;

  Color get onSurfaceText => Colors.white;
}

extension ColorsAppExtensions on BuildContext {
  ColorsApp get colors => ColorsApp.i;
}
// 3D5AFE