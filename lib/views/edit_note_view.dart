import 'package:flutter/material.dart';
import 'package:note/widgets/custom_app_bar.dart';

class EditNoteViwe extends StatelessWidget {
  const EditNoteViwe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(Icons.check, 'Edit Note'),
    );
  }
}
