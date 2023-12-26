import 'package:flutter/material.dart';

import '../../../../app/core/ui/helpers/enums.dart';
import '../../../../app/core/ui/styles/text_styles.dart';

class ChangeLanguage extends StatefulWidget {
  final Function(Language language) onSave;
  const ChangeLanguage({super.key, required this.onSave});

  @override
  State<ChangeLanguage> createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {
  ValueNotifier<Language> dropdownValue =
      ValueNotifier<Language>(Language.portugues);
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    dropdownValue.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Idioma do CV',
          style: context.textStyles.textRegular.copyWith(fontSize: 12),
        ),
        const SizedBox(width: 16),
        ValueListenableBuilder(
          valueListenable: dropdownValue,
          builder: (context, dv, child) {
            return Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: DropdownButton<Language>(
                value: dv,
                elevation: 16,
                style: context.textStyles.textMedium.copyWith(
                  color: Colors.grey.shade700,
                ),
                underline: Container(),
                onChanged: (value) {
                  dropdownValue.value = value!;
                  widget.onSave(value);
                },
                items: Language.values
                    .map<DropdownMenuItem<Language>>(
                      (item) => DropdownMenuItem(
                        value: item,
                        child: Text(item.title),
                      ),
                    )
                    .toList(),
              ),
            );
          },
        ),
      ],
    );
  }
}
