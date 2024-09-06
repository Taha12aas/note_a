import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Padding(
        padding: const EdgeInsets.only(
          top: 20,
          bottom: 30,
          left: 15,
          right: 15,
        ),
        child: CustomTextField(hintText: 'title'),
      ),
      Padding(
        padding: const EdgeInsets.only(
          bottom: 30,
          left: 15,
          right: 15,
        ),
        child: CustomTextField(
          hintText: 'coments',
          height: 10,
        ),
      ),
      
    ]);
  }
}
