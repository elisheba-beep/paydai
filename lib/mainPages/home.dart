import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paydai/utils/palette.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            CupertinoIcons.person_alt,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.bell,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.money_dollar_circle_fill,
            ),
          ),
        ],
        centerTitle: true,
        title: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 0,
          ),
          width: 120,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey[700],
            borderRadius: BorderRadius.circular(
              50,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.flag_circle,
              ),
              const Text(
                'NG Naira',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.arrow_drop_down_circle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
