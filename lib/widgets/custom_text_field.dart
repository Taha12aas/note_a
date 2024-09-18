import 'package:flutter/material.dart';
import 'package:note/constants.dart';

@immutable
class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxLine = 1,
    this.onsaved,
    this.initialValue = '', this.onChanged,
  });
  final String hintText;
  final int maxLine;
  final void Function(String?)? onsaved;
  final String initialValue;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () {
        
      },
      onChanged: onChanged,
      initialValue: initialValue,
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
        errorBorder: buildBorder(Colors.red),
      ),
    );
  }

  OutlineInputBorder buildBorder(Color color) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: color),
        borderRadius: BorderRadius.circular(10));
  }
}
