// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CreateCardButton extends StatelessWidget {
  const CreateCardButton({
    Key? key,
    required this.paymentNetwork,
    required this.onPressed,
  }) : super(key: key);

  final String paymentNetwork;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: Colors.black,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Create a ',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              paymentNetwork == 'mastercard'
                  ? 'Mastercard'
                  : paymentNetwork == 'visa'
                      ? 'Visa Card'
                      : 'Verve Card',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
