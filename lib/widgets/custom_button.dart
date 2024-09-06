import 'package:flutter/material.dart';
import 'package:note/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: const ButtonStyle(
            padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
            backgroundColor: MaterialStatePropertyAll(kPrimaryColor)),
        onPressed: () {},
        child: const Text(
          'Add',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ));
  }
}
