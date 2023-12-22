import 'package:flutter/material.dart';
import 'dart:io';
import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/foundation.dart';
import 'app/core/ui/helpers/enums.dart';
import 'resume_maker_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows && !kIsWeb) {
    await DesktopWindow.setWindowSize(
      // sizeScreen.parseSize('RedmiNote8'),
      sizeScreen.parseSize('Small Mobile'),
    );
  }
  runApp(const ResumeMakerApp());
}
