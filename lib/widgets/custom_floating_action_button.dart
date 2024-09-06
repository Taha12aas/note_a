import 'package:flutter/material.dart';
import 'package:note/widgets/add_note_bottom_sheet.dart';

class CustomFloatingActionButtun extends StatelessWidget {
  const CustomFloatingActionButtun({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
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
    );
  }
}
