import 'package:flutter/material.dart';

import '../../core/ui/helpers/size_extensions.dart';
import '../../core/ui/styles/colors_app.dart';
import '../../core/ui/styles/text_styles.dart';

class StepperWidget extends StatelessWidget {
  final int step;
  final List<Map<String, Object>> steps;
  const StepperWidget({
    required this.step,
    super.key,
    required this.steps,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: SizedBox(
        width: context.screenWidth <= 540 ? 320 : 540,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: steps.asMap().entries.map((stp) {
                return Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: (step - 1 >= stp.key)
                            ? ColorsApp.i.secondary
                            : ColorsApp.i.primaryLightest,
                        borderRadius: BorderRadius.circular(60),
                      ),
                      child: Icon(
                        stp.value['icon'] as IconData,
                        color: (step - 1 >= stp.key)
                            ? Colors.white
                            : ColorsApp.i.primary,
                      ),
                    ),
                    if (stp.key < steps.length - 1)
                      Container(
                        color: (step - 1 > stp.key)
                            ? ColorsApp.i.secondary
                            : ColorsApp.i.primaryLightest,
                        width: context.screenWidth <= 540 ? 100 : 210,
                        height: 5,
                      ),
                  ],
                );
              }).toList(),
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: steps.asMap().entries.map((stp) {
                return Text(
                  stp.value['text'] as String,
                  style: context.textStyles.textMedium
                      .copyWith(color: Colors.white),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
