import 'package:flutter/material.dart';
import 'package:note/widgets/custom_app_bar.dart';
import 'package:note/widgets/custom_text_field.dart';

class EditNoteViwe extends StatelessWidget {
  const EditNoteViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(Icons.check, 'Edit Note'),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: CustomTextField(hintText: 'Title'),
          ),
          CustomTextField(
            hintText: 'Content',
            maxLine: 5,
          )
        ],
      ),
    );
  }
}
