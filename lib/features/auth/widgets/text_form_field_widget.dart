import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    this.controller,
    this.hintText,
    this.suffixIcon,
    required this.validator
  });
  final TextEditingController? controller;
  final String? hintText;
  final Widget? suffixIcon;
  final String? Function(String?) validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 14,
          fontWeight: .w400,
          color: Color(0xff808080),
        ),
        filled: true,
        fillColor: Color(0xffe9e9e9),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Color(0xffff3951)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.transparent),
        ),
      ),
    );
  }
}
