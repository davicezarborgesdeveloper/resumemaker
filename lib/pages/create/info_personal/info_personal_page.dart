import 'package:flutter/material.dart';

import '../../../app/core/ui/helpers/size_extensions.dart';
import '../../../app/core/ui/styles/colors_app.dart';
import '../../../app/common/top_page_register_resume/top_page_register_resume.dart';

class InfoPersonalPage extends StatelessWidget {
  const InfoPersonalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          TopPageRegisterResume(
            title: 'Detalhes pessoais',
            color: ColorsApp.i.primary,
            step: 1,
          ),
          SingleChildScrollView(
            child: Center(
              child: Container(
                width: context.isHandset ? context.screenWidth : 850,
                margin: const EdgeInsets.only(top: 200),
                child: Card(
                  margin: context.isHandset ? EdgeInsets.zero : null,
                  elevation: 4,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
