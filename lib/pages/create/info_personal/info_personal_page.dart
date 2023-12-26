import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

import '../../../app/common/input_field.dart';
import '../../../app/core/ui/helpers/enums.dart';
import '../../../app/core/ui/helpers/loader.dart';
import '../../../app/core/ui/helpers/messages.dart';
import '../../../app/core/ui/helpers/size_extensions.dart';
import '../../../app/core/ui/styles/colors_app.dart';
import '../../../app/common/top_page_register_resume/top_page_register_resume.dart';
import '../../../app/core/ui/styles/text_styles.dart';
import 'info_personal_controller.dart';
import 'widgets/photo_tile.dart';
import 'widgets/change_language.dart';
import '../../../app/common/title_section.dart';

class InfoPersonalPage extends StatefulWidget {
  const InfoPersonalPage({super.key});

  @override
  State<InfoPersonalPage> createState() => _InfoPersonalPageState();
}

class _InfoPersonalPageState extends State<InfoPersonalPage>
    with Loader, Messages {
  final InfoPersonalController controller = InfoPersonalController();
  final firstNameEC = TextEditingController();
  final surnameEC = TextEditingController();
  final emailEC = TextEditingController();
  final phoneEC = TextEditingController();
  final addressEC = TextEditingController();
  final zipEC = TextEditingController();
  final cityEC = TextEditingController();
  late final ReactionDisposer statusDisposer;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      statusDisposer = reaction((_) => controller.status, (status) {
        switch (status) {
          case InfoPersonalStateStatus.initial:
            break;
          case InfoPersonalStateStatus.loading:
            showLoader();
            break;
          case InfoPersonalStateStatus.success:
            hideLoader();
            break;
          case InfoPersonalStateStatus.error:
            hideLoader();
            break;
        }
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    firstNameEC.dispose();
    surnameEC.dispose();
    emailEC.dispose();
    phoneEC.dispose();
    addressEC.dispose();
    zipEC.dispose();
    phoneEC.dispose();
    statusDisposer();
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
            step: 1,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Center(
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
                        child: Column(
                          children: [
                            TitleSection(
                              title: 'Detalhes pessoais',
                              child: ChangeLanguage(
                                onSave: (Language value) {
                                  controller.setLanguage(value);
                                },
                              ),
                            ),
                            const Divider(),
                            Row(
                              children: [
                                Observer(
                                  builder: (_) => PhotoTile(
                                    setImage: (image) async {
                                      controller.saveImage(image);
                                    },
                                    delImage: () {
                                      controller.deleteImage();
                                    },
                                    image: controller.image,
                                    size: 120,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Observer(
                                        builder: (_) => InputField(
                                          label: 'Primeiro nome',
                                          hintText: 'John',
                                          controller: firstNameEC,
                                          onChanged: controller.setFirstName,
                                          errorText: controller.firstNameError,
                                          textInputAction: TextInputAction.next,
                                        ),
                                      ),
                                      Observer(
                                        builder: (_) => InputField(
                                          label: 'Sobrenome',
                                          hintText: 'Doe',
                                          controller: surnameEC,
                                          onChanged: controller.setSurname,
                                          errorText: controller.surnameError,
                                          textInputAction: TextInputAction.next,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Observer(
                                    builder: (_) => InputField(
                                      label: 'Endereço de email',
                                      hintText: 'teste@email.com',
                                      controller: emailEC,
                                      onChanged: controller.setEmail,
                                      errorText: controller.emailError,
                                      textInputAction: TextInputAction.next,
                                      keyboardType: TextInputType.emailAddress,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Observer(
                                    builder: (_) => InputField(
                                      label: 'Número de telefone',
                                      hintText: '(99) 9999-9999',
                                      controller: phoneEC,
                                      onChanged: controller.setPhone,
                                      keyboardType: TextInputType.phone,
                                      textInputAction: TextInputAction.next,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly,
                                        TelefoneInputFormatter(),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Observer(
                              builder: (_) => InputField(
                                label: 'Endereço',
                                hintText: 'São paulo',
                                controller: addressEC,
                                onChanged: controller.setAddress,
                                errorText: controller.addressError,
                                textInputAction: TextInputAction.next,
                                keyboardType: TextInputType.emailAddress,
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Observer(
                                    builder: (_) => InputField(
                                      label: 'Código postal',
                                      hintText: '00.000-000',
                                      controller: zipEC,
                                      onChanged: controller.setZipCode,
                                      textInputAction: TextInputAction.next,
                                      keyboardType: TextInputType.number,
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly,
                                        CepInputFormatter(),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Expanded(
                                  child: Observer(
                                    builder: (_) => InputField(
                                      label: 'Cidade/Localidade',
                                      hintText: 'Rio de janeiro',
                                      controller: cityEC,
                                      onChanged: controller.setCityLocale,
                                      keyboardType: TextInputType.text,
                                      textInputAction: TextInputAction.next,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Observer(
                              builder: (_) => controller.showInfos
                                  ? Column(
                                      children: [
                                        Container(
                                          height: 100,
                                          width: context.screenWidth,
                                          color: Colors.red,
                                        ),
                                      ],
                                    )
                                  : Container(),
                            ),
                            const SizedBox(height: 16),
                            SizedBox(
                              height: 50,
                              width: context.screenWidth,
                              child: ElevatedButton.icon(
                                onPressed: controller.changeShowInfos,
                                icon: Observer(
                                  builder: (_) => Icon(
                                    controller.showInfos
                                        ? Icons.remove_circle_outline
                                        : Icons.add_circle_outline,
                                  ),
                                ),
                                label: const Text('Informação adicional'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Observer(
                  builder: (_) => SizedBox(
                    height: 60,
                    child: GestureDetector(
                      onTap: controller.invalidSendPressed,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorsApp.i.primary,
                        ),
                        onPressed: controller.sendPressed,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Próximo passo',
                              style: context.textStyles.textMedium,
                            ),
                            const SizedBox(width: 8),
                            const Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
