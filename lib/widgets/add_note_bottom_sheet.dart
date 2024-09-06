import 'package:flutter/material.dart';
import 'package:note/widgets/custom_button.dart';
import 'package:note/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: const [
      Padding(
        padding: EdgeInsets.only(
          top: 20,
          bottom: 30,
          left: 15,
          right: 15,
        ),
        child: CustomTextField(hintText: 'Title'),
      ),
      Padding(
        padding: EdgeInsets.only(
          bottom: 30,
          left: 15,
          right: 15,
        ),
        child: CustomTextField(
          hintText: 'Content',
          maxLine: 5,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(top: 100, right: 14, left: 14, bottom: 5),
        child: CustomButton(),
      )
    ]);
  }
}
