import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 18, bottom: 18, left: 18),
            decoration: BoxDecoration(
              color: Colors.orange,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                    title: Text(
                      "Flutter Tips",
                      style: TextStyle(fontSize: 26, color: Colors.black),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(bottom: 8, top: 16),
                      child: Text(
                        "build a carer with The king taha alfakhoury  😁 ",
                        style: TextStyle(
                            fontSize: 20, color: Colors.black.withOpacity(0.5)),
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.trash,
                        color: Colors.black,
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(right: 32),
                  child: Text(
                    "may 12 2020",
                    style: TextStyle(
                        fontSize: 20, color: Colors.black.withOpacity(0.5)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
