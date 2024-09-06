import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note/constants.dart';
import 'package:note/views/notes_view.dart';

void main(List<String> args) async {
  await Hive.initFlutter();
  await Hive.openBox(kPrimaryBox);
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
