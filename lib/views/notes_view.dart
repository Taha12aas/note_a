import 'package:flutter/material.dart';
import 'package:note/widgets/add_note_bottom_sheet.dart';
import 'package:note/widgets/custom_app_bar.dart';
import 'package:note/widgets/note_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          tooltip: 'Create Note',
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          backgroundColor: Colors.black87,
          child: const Icon(
            Icons.add,
          ),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              },
            );
          },
        ),
        appBar: customAppBar(),
        body: const NoteListView());
  }
}
