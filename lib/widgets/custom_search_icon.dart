import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 46,
      height: 46,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(16)),
      child: IconButton(
        iconSize: 30,
        onPressed: () {},
        icon: const Icon(
          Icons.search_rounded,
        ),
      ),
    );
  }
}
