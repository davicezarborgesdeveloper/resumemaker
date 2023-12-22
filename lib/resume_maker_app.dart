import 'package:flutter/material.dart';

import 'app/core/ui/theme/theme_config.dart';
import 'routes.dart';

class ResumeMakerApp extends StatelessWidget {
  const ResumeMakerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resumé Maker',
      debugShowCheckedModeBanner: false,
      theme: ThemeConfig.theme,
      initialRoute: '/',
      onGenerateRoute: Routes.gerarRota,
    );
  }
}
