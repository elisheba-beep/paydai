// ignore_for_file: file_names

import 'package:flutter/material.dart';

class EditProfileButton extends StatelessWidget {
  const EditProfileButton({
    Key? key,
    required this.onPressed
  }) : super(key: key);

  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.green,
        shape: const StadiumBorder(),
      ),
      onPressed: onPressed,
      child: const Text(
        'Edit Profile',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
