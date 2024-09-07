import 'package:flutter/material.dart';
import 'package:note/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxLine = 1,
    this.onsaved,
  });
  final String hintText;
  final int maxLine;
  final void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onsaved,
      validator: (value) {
        if (value!.isEmpty) {
           return 'Field required';
        } else {
         return null;
        }
      },
      maxLines: maxLine,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: kPrimaryColor),
          focusedBorder: buildBorder(kPrimaryColor),
          enabledBorder: buildBorder(Colors.white),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }

  OutlineInputBorder buildBorder(Color color) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: color),
        borderRadius: BorderRadius.circular(10));
  }
}
