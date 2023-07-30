// ignore_for_file: file_names

import 'package:flutter/material.dart';

class UsernameAvatar extends StatelessWidget {
  const UsernameAvatar({
    Key? key,
    required this.letter,
    this.onTap,
    required this.home,
  }) : super(key: key);

  final String letter;
  final void Function()? onTap;
  final bool home;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: home ? onTap : () {},
      child: Padding(
        padding: EdgeInsets.all(home ? 8.0 : 0),
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(
                width: 2,
                color: home ? Colors.grey : Colors.transparent,
                style: BorderStyle.solid),
            borderRadius: const BorderRadius.all(
              Radius.circular(50),
            ),
            color: Colors.deepPurple,
          ),
          child: Center(
            child: Text(
              letter,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
