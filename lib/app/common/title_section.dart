import 'package:flutter/material.dart';

import '../core/ui/styles/text_styles.dart';

class TitleSection extends StatefulWidget {
  final String title;
  final Widget child;
  const TitleSection({required this.title, required this.child, super.key});

  @override
  State<TitleSection> createState() => _TitleSectionState();
}

class _TitleSectionState extends State<TitleSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.title,
          style: context.textStyles.textBold,
        ),
        widget.child,
      ],
    );
  }
}
