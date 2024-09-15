import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/cubit/notes_cubits_cubit.dart';
import 'package:note/widgets/add_note_bottom_sheet.dart';

class CustomFloatingActionButtun extends StatelessWidget {
  const CustomFloatingActionButtun({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      tooltip: 'Create Note',
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      backgroundColor: Colors.black87,
      child: const Icon(
        Icons.add,
      ),
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return const AddNoteBottomSheet();
          },
        );
      },
    );
  }
}
