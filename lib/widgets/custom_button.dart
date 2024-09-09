import 'package:flutter/material.dart';
import 'package:note/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPres,
    this.isloidig = false,
  });
  final void Function() onPres;
  final bool isloidig;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
          padding: MaterialStatePropertyAll(EdgeInsets.all(15)),
          backgroundColor: MaterialStatePropertyAll(kPrimaryColor)),
      onPressed: onPres,
      child: isloidig == true
          ? const CircularProgressIndicator(
              color: Colors.black,
            )
          : const Text(
              'Add',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
    );
  }
}
