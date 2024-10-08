import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon(
      {super.key, required this.icon, required this.onPressed});
  final IconData icon;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Container(
        alignment: Alignment.center,
        width: 46,
        height: 46,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(.05),
            borderRadius: BorderRadius.circular(16)),
        child: IconButton(
          iconSize: 30,
          onPressed: onPressed,
          icon: Icon(
            icon,
          ),
        ),
      ),
    );
  }
}
