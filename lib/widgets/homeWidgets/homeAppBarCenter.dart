// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomeAppBarCenter extends StatelessWidget {
  const HomeAppBarCenter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 0,
      ),
      width: 130,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.grey[700],
        borderRadius: BorderRadius.circular(
          50,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.flag_circle,
          ),
          const Text(
            'NG Naira',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.arrow_drop_down_circle,
            ),
          ),
        ],
      ),
    );
  }
}
