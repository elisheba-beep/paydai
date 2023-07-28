import 'package:flutter/material.dart';
import 'package:paydai/widgets/sharedWidgets/transactionCard.dart';
import 'package:paydai/widgets/transactionsWidgets/dailyTransactionsColumn.dart';

class Transactions extends StatelessWidget {
  const Transactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        centerTitle: true,
        title: const Text(
          'Transactions',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Icon(
                Icons.download,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: const [
              DailyTransactionColumn(
                date: 'Mar 08, 2023',
              ),
              DailyTransactionColumn(
                date: 'Mar 10, 2023',
              ),
              DailyTransactionColumn(
                date: 'Mar 12, 2023',
              ),
              DailyTransactionColumn(
                date: 'Mar 14, 2023',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
