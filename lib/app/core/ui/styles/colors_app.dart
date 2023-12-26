import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;
  ColorsApp._();
  static ColorsApp get i {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get primary => Colors.indigo.shade900;
  Color get primaryLightest => Colors.indigo.shade100;
  Color get error => Colors.red;
  Color get background => Colors.white;

  Color get secondary => Colors.amberAccent.shade700;

  Color get onSurfaceText => Colors.white;
}

extension ColorsAppExtensions on BuildContext {
  ColorsApp get colors => ColorsApp.i;
}
// 3D5AFE