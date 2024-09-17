import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/cubit/notes_cubits_cubit.dart';

import 'package:note/widgets/custom_app_bar.dart';
import 'package:note/widgets/custom_floating_action_button.dart';
import 'package:note/widgets/note_list_view.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
    @override
    void initState() {
      BlocProvider.of<NotesCubitsCubit>(context).showNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: const CustomFloatingActionButtun(),
        appBar: customAppBar(Icons.search, 'Note'),
        body: const NoteListView());
  }
}
