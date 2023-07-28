// ignore_for_file: file_names

import 'package:flutter/material.dart';

class VisaLogo extends StatelessWidget {
  const VisaLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'VISA',
      style: TextStyle(
        fontStyle: FontStyle.italic,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 30,
      ),
    );
  }
}
