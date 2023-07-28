// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:paydai/widgets/cardsWidgets/masterCardLogo.dart';
import 'package:paydai/widgets/sharedWidgets/payDaiLogo.dart';
import 'package:paydai/widgets/cardsWidgets/verveLogo.dart';
import 'package:paydai/widgets/cardsWidgets/visaLogo.dart';

class VirtualCard extends StatelessWidget {
  final String paymentNetwork;
  final void Function() onTap;
  const VirtualCard(
      {Key? key, required this.paymentNetwork, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width - 80,
        height: 180,
        decoration: BoxDecoration(
          color: paymentNetwork == 'mastercard'
              ? Colors.black
              : paymentNetwork == 'visa'
                  ? Colors.purple
                  : Colors.green,
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const PayDaiLogo(),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Text(
                        'VIRTUAL CARD',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  paymentNetwork == 'mastercard'
                      ? const MasterCardLogo()
                      : paymentNetwork == 'visa'
                          ? const VisaLogo()
                          : const VerveLogo()
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
