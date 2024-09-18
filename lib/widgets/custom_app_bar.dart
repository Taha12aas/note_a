import 'package:flutter/material.dart';
import 'package:note/widgets/custom_search_icon.dart';

AppBar customAppBar(IconData icon, String title, void Function() onPressed) {
  return AppBar(
    title: Text(
      title,
      style: const TextStyle(fontSize: 28),
    ),
    actions: [
      CustomSearchIcon(
        icon: icon,
        onPressed: onPressed,
      )
    ],
  );
}
