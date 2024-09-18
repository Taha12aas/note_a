import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/cubit/notes_cubits_cubit.dart';
import 'package:note/models/note_model.dart';
import 'package:note/widgets/custom_app_bar.dart';
import 'package:note/widgets/custom_text_field.dart';

class EditNoteViwe extends StatefulWidget {
  const EditNoteViwe({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViwe> createState() => _EditNoteViweState();
}

class _EditNoteViweState extends State<EditNoteViwe> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(Icons.check, 'Edit Note', () {
        
        widget.note.title = title ?? widget.note.title;
        widget.note.content = content ?? widget.note.content;
        widget.note.save();
        BlocProvider.of<NotesCubitsCubit>(context).showNotes();
        Navigator.pop(context);
      }),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: CustomTextField(
              onChanged: (p0) {
                title = p0;
              },
              hintText: 'Title',
              initialValue: widget.note.title,
            ),
          ),
          CustomTextField(
            onChanged: (p0) {
              content = p0;
            },
            initialValue: widget.note.content,
            hintText: 'Content',
            maxLine: 5,
          )
        ],
      ),
    );
  }
}
