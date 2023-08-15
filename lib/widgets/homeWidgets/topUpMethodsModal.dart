// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:paydai/widgets/homeWidgets/topUpMethod.dart';

class TopUpMethodsModal extends StatelessWidget {
  const TopUpMethodsModal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          )),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            FractionallySizedBox(
              widthFactor: 0.11,
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                ),
                child: Container(
                  height: 4.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: const BorderRadius.all(Radius.circular(2.5)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                'Top up Methods',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TopUpMethod(
              icon: Icons.info,
              text: 'Fund with bank transfer',
              subText: 'Tap to view details',
              onTap: () {},
            ),
            Divider(
              height: 1,
              thickness: 2,
              color: Colors.grey[100],
            ),
            TopUpMethod(
              icon: Icons.wallet,
              text: 'Fund with other wallets',
              subText: 'Use your other currency wallets',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
