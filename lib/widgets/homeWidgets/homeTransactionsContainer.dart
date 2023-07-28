// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:paydai/widgets/sharedWidgets/transactionCard.dart';

class HomeTransactionsContainer extends StatelessWidget {
  const HomeTransactionsContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Recent',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'VIEW ALL',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ],
            ),
            TransactionCard(
              send: false,
              card: true,
              time: '06:15 AM',
              amount: 1,
              currency: 'Dollar',
              onTap: () {},
            ),
            TransactionCard(
              send: true,
              card: false,
              beneficiary: 'EKWUNIFE OLUWATOMIWA SOMTOCHUKWU',
              time: '04:15 PM',
              amount: 100,
              currency: 'Naira',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
