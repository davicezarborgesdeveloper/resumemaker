import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputField extends StatefulWidget {
  final String? label;
  final String? hintText;
  final String? errorText;
  final ValueChanged<String>? onChanged;
  final Function? onChangedAnother;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final bool obscure;
  final String? initialValue;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final Color? themeColor;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onFieldSubmitted;
  const InputField({
    this.label,
    this.hintText,
    this.errorText,
    this.onChanged,
    this.onChangedAnother,
    this.inputFormatters,
    this.keyboardType,
    this.obscure = false,
    this.initialValue,
    this.controller,
    this.focusNode,
    this.themeColor,
    this.textInputAction,
    this.onFieldSubmitted,
    super.key,
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  void initState() {
    if (widget.controller != null) {
      widget.controller!.text = widget.initialValue ?? '';
    }
    if (widget.focusNode != null) {
      widget.focusNode!.addListener(() {
        setState(() {});
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(widget.label!),
        ),
        TextFormField(
          focusNode: widget.focusNode,
          controller: widget.controller,
          textInputAction: widget.textInputAction,
          onFieldSubmitted: widget.onFieldSubmitted,
          decoration: InputDecoration(
            errorText: widget.errorText,
            hintText: widget.hintText,
          ),
          onChanged: widget.onChanged,
          keyboardType: widget.keyboardType,
          inputFormatters: widget.inputFormatters,
        ),
      ],
    );
  }
}
