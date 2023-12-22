import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../app/common/input_field.dart';
import '../../../app/core/ui/helpers/enums.dart';
import '../../../app/core/ui/helpers/size_extensions.dart';
import '../../../app/core/ui/styles/colors_app.dart';
import '../widgets/title_section.dart';
import '../../../app/common/top_page_register_resume/top_page_register_resume.dart';
import 'change_language.dart';
import 'info_personal_controller.dart';
import 'photo_tile.dart';

class InfoPersonal extends StatefulWidget {
  const InfoPersonal({super.key});

  @override
  State<InfoPersonal> createState() => _InfoPersonalState();
}

class _InfoPersonalState extends State<InfoPersonal> {
  final firstNameEC = TextEditingController();
  final surnameEC = TextEditingController();
  final emailEC = TextEditingController();
  final phoneEC = TextEditingController();
  final InfoPersonalController controller = InfoPersonalController();

  @override
  void dispose() {
    firstNameEC.dispose();
    surnameEC.dispose();
    emailEC.dispose();
    phoneEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          TopPageRegisterResume(
            title: 'Detalhes pessoais',
            color: ColorsApp.i.primary,
          ),
          SingleChildScrollView(
            child: Center(
              child: Container(
                width: context.isHandset ? context.screenWidth : 850,
                margin: const EdgeInsets.only(top: 100),
              ),
            ),
          )
        ],
      ),
    );
  }
}
