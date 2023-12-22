import 'package:flutter/material.dart';

import '../../core/ui/helpers/enums.dart';

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    if (size.width < sizeScreen.largeTablet.width) {
      path.lineTo(size.width, size.height);
    } else {
      path.lineTo(size.width, size.height * .55);
    }
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
