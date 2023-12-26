import 'package:flutter/material.dart';

import '../../core/ui/helpers/size_extensions.dart';
import '../../core/ui/styles/colors_app.dart';
import '../../core/ui/styles/text_styles.dart';
import 'stepper_widget.dart';
import 'wave_clipper.dart';

// import '../../../../app/core/ui/helpers/size_extensions.dart';
// import 'wave_clipper.dart';

class TopPageRegisterResume extends StatelessWidget {
  final String? title;
  final int? step;
  final Color color;
  const TopPageRegisterResume({
    this.title,
    this.step,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipper(),
      child: Container(
        color: color,
        height: (context.screenHeight * .45),
        padding: const EdgeInsets.only(top: 50),
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(
              title!,
              style: context.textStyles.textBold
                  .copyWith(color: ColorsApp.i.onSurfaceText, fontSize: 24),
            ),
            const StepperWidget(
              step: 1,
              steps: [
                {
                  'icon': Icons.person,
                  'text': 'Pessoal',
                },
                {
                  'icon': Icons.note_alt_outlined,
                  'text': 'Experiências',
                },
                {
                  'icon': Icons.edit,
                  'text': 'Tema',
                }
              ],
            ),
          ],
        ),
      ),
    );
  }
}
