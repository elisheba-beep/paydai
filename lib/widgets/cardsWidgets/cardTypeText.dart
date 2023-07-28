// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CardTypeText extends StatelessWidget {
  const CardTypeText({
    Key? key,
    required this.paymentNetwork,
  }) : super(key: key);

  final String paymentNetwork;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Paydai ',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        Text(
          paymentNetwork == 'mastercard'
              ? 'MasterCard'
              : paymentNetwork == 'visa'
                  ? 'Visa '
                  : 'Verve ',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        Text(
          paymentNetwork == 'mastercard' ? '' : 'Card',
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
