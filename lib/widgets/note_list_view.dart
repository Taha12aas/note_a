
import 'package:flutter/material.dart';
import 'package:note/widgets/note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const NoteItem();
      },
    );
  }
}
