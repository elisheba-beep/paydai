// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TopUpMethod extends StatelessWidget {
  const TopUpMethod({
    required this.icon,
    required this.text,
    required this.subText,
    required this.onTap,
    Key? key,
  }) : super(key: key);
  final IconData icon;
  final String text;
  final String subText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.green,
                  ),
                  child: Icon(
                    icon,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      subText,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Icon(
              Icons.arrow_forward_ios,
              size: 14,
            ),
          ],
        ),
      ),
    );
  }
}
