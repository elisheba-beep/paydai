import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paydai/utils/palette.dart';
import 'package:paydai/widgets/homeWidgets/balance.dart';
import 'package:paydai/widgets/homeWidgets/homeAppBarAction.dart';
import 'package:paydai/widgets/homeWidgets/homeAppBarCenter.dart';
import 'package:paydai/widgets/homeWidgets/homeQuickActionsRow.dart';
import 'package:paydai/widgets/homeWidgets/homeTransactionsContainer.dart';
import 'package:paydai/widgets/homeWidgets/referCard.dart';
import 'package:paydai/widgets/homeWidgets/transferMoneyCard.dart';
import 'package:paydai/widgets/sharedWidgets/usernameAvatar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: UsernameAvatar(
          letter: 'O',
          home: true,
          onTap: () {},
        ),
        actions: [
          HomeAppBarAction(
            icon: CupertinoIcons.bell_fill,
            onTap: () {},
          ),
          HomeAppBarAction(
            icon: CupertinoIcons.money_dollar_circle_fill,
            onTap: () {},
          ),
        ],
        centerTitle: true,
        title: const HomeAppBarCenter(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Palette.kToDark,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Column(
                  children: [
                    const Center(
                      child: Balance(),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const HomeQuickActionsRow(),
                    const SizedBox(
                      height: 20,
                    ),
                    TransferMoneyCard(
                      icon: CupertinoIcons.arrow_up_circle_fill,
                      onTap: () {},
                      text: 'Send',
                      subtext: 'Transfer money locally or abroad',
                      top: true,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(
                    height: 0,
                    indent: 0,
                    thickness: 1,
                    color: Colors.grey[100],
                  ),
                  TransferMoneyCard(
                    icon: CupertinoIcons.arrow_down_circle_fill,
                    onTap: () {},
                    text: 'Request',
                    subtext: 'Get cash from a contact or via a link',
                    top: false,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Refer & earn',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const ReferCard(),
                  const SizedBox(
                    height: 20,
                  ),
                  const HomeTransactionsContainer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
