import 'package:flutter/material.dart';
import 'package:note/widgets/Note_Item.dart';
import 'package:note/widgets/custom_app_bar.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: NoteItem(),
    );
  }
}
