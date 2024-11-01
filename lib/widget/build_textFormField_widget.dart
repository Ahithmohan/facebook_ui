import 'package:flutter/material.dart';

class BuildTextFormFieldWidget extends StatefulWidget {
  final String text;
  final bool? isObscure;
  final Icon? suffixIcon;
  final Function()? onTap;

  BuildTextFormFieldWidget({
    required this.text,
    super.key,
    this.isObscure,
    this.onTap,
    this.suffixIcon,
  });

  @override
  //bool isTapped = false;
  State<BuildTextFormFieldWidget> createState() =>
      _BuildTextFormFieldWidgetState();
}

class _BuildTextFormFieldWidgetState extends State<BuildTextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () {
        widget.onTap!();
      },
      style: TextStyle(
        decoration: TextDecoration.none,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      cursorColor: Colors.white38,
      obscureText: widget.isObscure ?? false,
      decoration: InputDecoration(
        suffixIcon: widget.suffixIcon,
        labelText: widget.text,
        labelStyle: TextStyle(
          color: Colors.white38,
        ),
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(color: Colors.white54)),
      ),
    );
  }
}
