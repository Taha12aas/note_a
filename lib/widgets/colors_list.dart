import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/constants.dart';
import 'package:note/cubits/add%20note%20cubit/add_note_cubit_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.color, required this.isActiv});
  final Color color;
  final bool isActiv;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: isActiv
          ? CircleAvatar(
              backgroundColor: color,
              radius: 30,
              child: const Icon(
                size: 35,
                color: Colors.black87,
                Icons.check,
              ),
            )
          : CircleAvatar(
              backgroundColor: color,
              radius: 30,
            ),
    );
  }
}

class ColorsList extends StatefulWidget {
  const ColorsList({super.key});

  @override
  State<ColorsList> createState() => _ColorsListState();
}

class _ColorsListState extends State<ColorsList> {
  
  int? currentItem;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                BlocProvider.of<AddNoteCubitCubit>(context).color =
                    kColorsList[index];
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
    );
  }
}
