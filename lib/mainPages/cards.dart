import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:paydai/widgets/cardsWidgets/cardCreationFeeCard.dart';
import 'package:paydai/widgets/cardsWidgets/cardTypeText.dart';
import 'package:paydai/widgets/cardsWidgets/createCardButton.dart';
import 'package:paydai/widgets/cardsWidgets/virtualCard.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

final myList = [
  VirtualCard(
    paymentNetwork: 'mastercard',
    onTap: () {},
  ),
  VirtualCard(
    paymentNetwork: 'visa',
    onTap: () {},
  ),
  VirtualCard(
    paymentNetwork: 'verve',
    onTap: () {},
  ),
];

class _CardsState extends State<Cards> {
  String paymentNetwork = 'mastercard';
  ScrollController _controller = ScrollController();

  _scrollListener() {
    if (_controller.offset >= _controller.position.maxScrollExtent - 250 &&
        !_controller.position.outOfRange) {
      setState(() {
        paymentNetwork = 'verve';
      });
    }
    if (_controller.offset >= _controller.position.maxScrollExtent - 350 &&
        _controller.offset < _controller.position.maxScrollExtent - 100 &&
        !_controller.position.outOfRange) {
      setState(() {
        paymentNetwork = 'visa';
      });
    }
    if (_controller.offset <= _controller.position.minScrollExtent &&
        !_controller.position.outOfRange) {
      setState(() {
        paymentNetwork = 'mastercard';
      });
    }
  }

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[50],
        centerTitle: true,
        title: const Text(
          'Cards',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Icon(
                CupertinoIcons.money_dollar_circle_fill,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width - 40,
            height: 180,
            child: ListView.separated(
              controller: _controller,
              itemCount: myList.length,
              itemBuilder: (context, index) {
                return myList[index];
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 20,
                );
              },
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              scrollDirection: Axis.horizontal,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                CardTypeText(paymentNetwork: paymentNetwork),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 35.0, vertical: 10.0),
                  child: Text(
                    paymentNetwork == 'visa'
                        ? 'Visa card for even more versatile transactions'
                        : 'Suitable for all online shopping and subscription services',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
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
                  child: Column(
                    children: [
                      CardCreationFeeCard(
                        cardCreation: true,
                        subtext: paymentNetwork == 'verve' ? 'Free' : '\$5.00',
                        icon: Icons.picture_in_picture,
                      ),
                      const CardCreationFeeCard(
                        cardCreation: false,
                        subtext: 'None',
                        text: 'Transaction fees',
                        icon: CupertinoIcons.money_dollar_circle_fill,
                      ),
                      CardCreationFeeCard(
                        cardCreation: false,
                        subtext: paymentNetwork == 'verve'
                            ? 'Verve Safe Token'
                            : 'No',
                        text: paymentNetwork == 'verve'
                            ? 'Security type'
                            : '3D Secure',
                        icon: Icons.lock,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CreateCardButton(
                  paymentNetwork: paymentNetwork,
                  onPressed: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
