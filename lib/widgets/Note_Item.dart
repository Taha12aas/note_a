import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note/cubits/cubit/notes_cubits_cubit.dart';
import 'package:note/models/note_model.dart';
import 'package:note/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return const EditNoteViwe();
          },
        ));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 18, bottom: 18, left: 18),
              decoration: BoxDecoration(
                color: Color(note.color),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ListTile(
                      title: Text(
                        note.title,
                        style:
                            const TextStyle(fontSize: 26, color: Colors.black),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(bottom: 8, top: 16),
                        child: Text(
                          note.content,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black.withOpacity(0.5)),
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          note.delete();
                          BlocProvider.of<NotesCubitsCubit>(context)
                              .showNotes();
                        },
                        icon: const Icon(
                          FontAwesomeIcons.trash,
                          color: Colors.black,
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.only(right: 32),
                    child: Text(
                      note.date,
                      style: TextStyle(
                          fontSize: 20, color: Colors.black.withOpacity(0.5)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
