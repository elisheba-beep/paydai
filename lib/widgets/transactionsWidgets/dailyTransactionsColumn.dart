// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:paydai/widgets/sharedWidgets/transactionCard.dart';

class DailyTransactionColumn extends StatelessWidget {
  final String date;
  const DailyTransactionColumn({Key? key, required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey[300]!.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                date,
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
              TransactionCard(
                card: true,
                send: false,
                currency: 'Dollar',
                amount: 4,
                time: '07:06 AM',
                onTap: () {},
              ),
              TransactionCard(
                card: false,
                send: true,
                beneficiary: 'Oluwatomiwa Somtochukwu Ekwunife',
                currency: 'Dollar',
                amount: 4,
                time: '07:05 AM',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
