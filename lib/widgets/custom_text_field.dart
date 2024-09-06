import 'package:flutter/material.dart';
import 'package:note/constants.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    this.height,
    required this.hintText,
  });
  final String hintText;
  double? height;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      strutStyle: StrutStyle(
        height: height,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: kPrimaryColor),
        focusedBorder: buildBorder(kPrimaryColor),
        enabledBorder: buildBorder(Colors.white),
      ),
    );
  }

  OutlineInputBorder buildBorder(Color color) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: color),
        borderRadius: BorderRadius.circular(10));
  }
}
