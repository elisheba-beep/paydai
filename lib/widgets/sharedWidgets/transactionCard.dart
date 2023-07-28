// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class TransactionCard extends StatelessWidget {
  final bool card;
  final bool send;
  final String currency;
  final int amount;
  final String? beneficiary;
  final String time;
  final void Function() onTap;
  const TransactionCard({
    Key? key,
    required this.card,
    required this.send,
    required this.currency,
    required this.amount,
    required this.time,
    required this.onTap,
    this.beneficiary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.green[500],
                    borderRadius: BorderRadius.circular(
                      25,
                    ),
                  ),
                  child: Center(
                    child: Icon(
                      card ? CupertinoIcons.creditcard_fill : Icons.business,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          send ? 'to ' : 'from ',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 150,
                          child: Text(
                            card
                                ? 'Virtual Card'
                                : beneficiary != null
                                    ? beneficiary!
                                    : '',
                            softWrap: false,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      time,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Row(
              children: [
                Text(
                  send ? '-' : '+',
                  style: TextStyle(
                    color: send ? Colors.black : Colors.green,
                  ),
                ),
                Text(
                  currency == "Naira"
                      ? 'N'
                      : currency == "Dollar"
                          ? '\$'
                          : 'E',
                  style: TextStyle(
                    color: send ? Colors.black : Colors.green,
                  ),
                ),
                Text(
                  '$amount',
                  style: TextStyle(
                    color: send ? Colors.black : Colors.green,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  '.00',
                  style: TextStyle(
                    color: send ? Colors.black : Colors.green,
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
