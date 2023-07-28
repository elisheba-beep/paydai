// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CardCreationFeeCard extends StatelessWidget {
  final bool cardCreation;
  final String text;
  final String subtext;
  final IconData icon;
  const CardCreationFeeCard({
    Key? key,
    required this.cardCreation,
    this.text = 'Card creation fee',
    required this.icon,
    required this.subtext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(25),
              ),
              color: Colors.grey[200],
            ),
            child: Icon(
              icon,
              color: Colors.grey[500],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              cardCreation
                  ? Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          color: Colors.green,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 3.0, horizontal: 5.0),
                          child: Text(
                            subtext,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    )
                  : Text(
                      subtext,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
