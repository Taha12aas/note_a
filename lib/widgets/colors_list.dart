import 'package:flutter/material.dart';

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
  List<Color> colorsList = const [
    Color(0xff5603AD),
    Color(0xff8367C7),
    Color(0xffB3E9C7),
    Color(0xffC2F8CB),
    Color(0xffF0FFF1),
    Color(0xff3E5641),
    Color(0xffA24936),
    Color(0xffD36135),
    Color(0xff282B28),
    Color(0xff83BCA9),
  ];
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
          itemCount: colorsList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currentItem = index;

                setState(() {});
              },
              child: ColorItem(
                color: colorsList[index],
                isActiv: currentItem == index,
              ),
            );
          },
        ),
      ),
    );
  }
}
