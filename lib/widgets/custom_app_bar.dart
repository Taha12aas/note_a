import 'package:flutter/material.dart';
import 'package:note/widgets/custom_search_icon.dart';



AppBar customAppBar() {
    return AppBar(
      title: const Text(
        'Notes',
        style: TextStyle(fontSize: 28),
      ),
      actions: const [CustomSearchIcon()],
    );
  }