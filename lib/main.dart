import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note/constants.dart';
import 'package:note/models/note_model.dart';
import 'package:note/simpel_bloc_observer.dart';
import 'package:note/views/notes_view.dart';

void main(List<String> args) async {
  Bloc.observer = SimpelBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kPrimaryBox);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins', brightness: Brightness.dark),
      home: const NotesView(),
    );
  }
}
