import 'package:flutter/material.dart';

class ExchangeCard extends StatelessWidget {
  const ExchangeCard({
    Key? key,
    required this.controller,
    required this.youPay,
    required this.currency,
    required this.focusNode,
  }) : super(key: key);
  final String currency;
  final bool youPay;
  final TextEditingController controller;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        border: Border.all(
          color: Colors.grey[200]!,
          width: 1.5,
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 100,
            decoration: BoxDecoration(
              color: Colors.grey[50],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 15.0,
                horizontal: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.flag_circle,
                    color: currency == 'Naira'
                        ? Colors.green
                        : Colors.red,
                    size: 20,
                  ),
                  Text(
                    currency == 'Naira' ? 'NGN' : 'USD',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.grey[400],
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width - 133,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        youPay ? 'You pay' : 'You get',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      youPay
                          ? Container(
                              decoration: BoxDecoration(
                                color: Colors.green[50],
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.wallet,
                                      color: Colors.green[600],
                                      size: 14,
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          'N',
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          '50',
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          '.00',
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                  TextField(
                    cursorColor: Colors.grey[700],
                    keyboardType: TextInputType.number,
                    focusNode: focusNode,
                    controller: controller,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(3),
                      isDense: true,
                      border: InputBorder.none,
                      hintText: '0',
                      hintStyle: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
