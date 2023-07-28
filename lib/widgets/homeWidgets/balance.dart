import 'package:flutter/material.dart';

class Balance extends StatefulWidget {
  const Balance({
    Key? key,
  }) : super(key: key);

  @override
  State<Balance> createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  bool hidden = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          hidden = !hidden;
        });
      },
      child: RichText(
        text: TextSpan(
          text: hidden ? '.' : 'N',
          style: const TextStyle(
            color: Colors.grey,
          ),
          children: [
            TextSpan(
              text: hidden ? '.' : '50',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            TextSpan(
              text: hidden ? '.' : '.00',
            ),
          ],
        ),
        // style: TextStyle(
        //   color: Colors.white,
        //   fontSize: 24,
        // ),
      ),
    );
  }
}
