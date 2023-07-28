// ignore_for_file: file_names

import 'package:flutter/material.dart';

class VerveLogo extends StatelessWidget {
  const VerveLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75,
      child: Stack(
        alignment: Alignment.center,
        children: const [
          Icon(
            Icons.circle,
            color: Colors.red,
            size: 30,
          ),
          Positioned(
            left: 30,
            child: Text(
              'Verve',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
