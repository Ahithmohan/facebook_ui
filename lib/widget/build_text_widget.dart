import 'package:flutter/material.dart';

class BuildTextWidget extends StatefulWidget {
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? textSize;

  const BuildTextWidget({
    required this.text,
    this.color,
    this.fontWeight,
    this.textSize,
    super.key,
  });

  @override
  State<BuildTextWidget> createState() => _BuildTextWidgetState();
}

class _BuildTextWidgetState extends State<BuildTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(
        color: widget.color ?? Colors.black,
        decoration: TextDecoration.none,
        fontWeight: widget.fontWeight,
        fontSize: widget.textSize,
      ),
    );
  }
}
