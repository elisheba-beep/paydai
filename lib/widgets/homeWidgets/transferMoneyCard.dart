// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TransferMoneyCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final String subtext;
  final void Function() onTap;
  final bool top;
  const TransferMoneyCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.subtext,
    required this.onTap,
    required this.top,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(
          20,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(top ? 15 : 0),
            topRight: Radius.circular(top ? 15 : 0),
            bottomLeft: Radius.circular(top ? 0 : 15),
            bottomRight: Radius.circular(top ? 0 : 15),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(
                  50,
                ),
              ),
              child: Center(
                child: Icon(
                  icon,
                ),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$text Money",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  subtext,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
