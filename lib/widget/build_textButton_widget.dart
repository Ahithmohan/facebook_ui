import 'package:flutter/material.dart';

import 'build_text_widget.dart';

class BuildTextButtonWidget extends StatefulWidget {
  final VoidCallback onTap;
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? textSize;
  const BuildTextButtonWidget({
    required this.onTap,
    required this.text,
    this.color,
    this.fontWeight,
    this.textSize,
    super.key,
  });

  @override
  State<BuildTextButtonWidget> createState() => _BuildTextButtonWidgetState();
}

class _BuildTextButtonWidgetState extends State<BuildTextButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: BuildTextWidget(
        text: widget.text,
        color: widget.color,
        fontWeight: widget.fontWeight,
      ),
      onPressed: widget.onTap,
    );
  }
}
