// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MasterCardLogo extends StatelessWidget {
  const MasterCardLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Icon(
          Icons.circle,
          color: Colors.red,
          size: 40,
        ),
        Positioned(
          left: 20,
          right: 100,
          child: Icon(
            Icons.circle,
            color: Colors.orange,
            size: 40,
          ),
        ),
      ],
    );
  }
}
