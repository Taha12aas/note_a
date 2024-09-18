import 'package:flutter/material.dart';
import 'package:note/constants.dart';
import 'package:note/models/note_model.dart';
import 'package:note/widgets/colors_list.dart';

class EditColor extends StatefulWidget {
  const EditColor({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditColor> createState() => _EditColorState();
}

class _EditColorState extends State<EditColor> {
  late int currentItem;
  @override
  void initState() {
    currentItem = kColorsList.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        height: 60,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: kColorsList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  currentItem = index;
                  widget.note.color = kColorsList[index].value;
                  setState(() {});
                },
                child: ColorItem(
                  color: kColorsList[index],
                  isActiv: currentItem == index,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
