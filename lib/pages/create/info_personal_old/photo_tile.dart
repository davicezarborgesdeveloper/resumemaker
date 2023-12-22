import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../../app/core/ui/styles/text_styles.dart';

class PhotoTile extends StatelessWidget {
  const PhotoTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: DottedBorder(
        color: Colors.grey,
        strokeWidth: 1,
        child: Container(
          width: 150,
          height: 150,
          color: Colors.grey.shade200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.camera_alt,
                size: 48,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Adicionar Foto',
                style: context.textStyles.textRegular.copyWith(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
