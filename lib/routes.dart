import 'package:flutter/material.dart';

import 'pages/create/info_personal/info_personal_page.dart';

class Routes {
  static Route<dynamic> gerarRota(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const InfoPersonalPage());
    }
    return _erroRota();
  }

  static Route<dynamic> _erroRota() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Tela não encontrada!'),
          ),
          body: const Center(
            child: Text('Tela não encontrada!'),
          ),
        );
      },
    );
  }
}
