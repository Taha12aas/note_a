import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/cubit/notes_cubits_cubit.dart';
import 'package:note/cubits/cubit/notes_cubits_state.dart';
import 'package:note/models/note_model.dart';
import 'package:note/widgets/note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubitsCubit, NotesCubitsState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubitsCubit>(context).notes!;
        return ListView.builder(
          itemCount: notes.length,
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemBuilder: (context, index) {
            return NoteItem(
              note: notes[index],
            );
          },
        );
      },
    );
  }
}
