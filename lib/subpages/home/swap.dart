import 'package:flutter/material.dart';
import 'package:paydai/utils/navigation.dart' as route;
import 'package:paydai/widgets/homeWidgets/exchangeCard.dart';
import 'package:paydai/widgets/homeWidgets/exchangeDetails.dart';
import 'package:paydai/widgets/sharedWidgets/bigBlackButton.dart';

class Swap extends StatefulWidget {
  const Swap({super.key});

  @override
  State<Swap> createState() => _SwapState();
}

class _SwapState extends State<Swap> {
  TextEditingController youGetController = TextEditingController();
  TextEditingController youPayController = TextEditingController();

  FocusNode youGetFocusNode = FocusNode();
  FocusNode youPayFocusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          'Exchange Money',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey[900],
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pushNamed(
              context,
              route.landingPage,
            );
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.grey[900],
            size: 20,
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            FocusScope.of(context).unfocus();
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              ExchangeCard(
                controller: youPayController,
                focusNode: youPayFocusNode,
                currency: 'Naira',
                youPay: true,
              ),
              const ExchangeDetails(),
              ExchangeCard(
                controller: youGetController,
                focusNode: youGetFocusNode,
                currency: 'Dollar',
                youPay: false,
              ),
              BigBlackButton(
                text: 'Continue',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
