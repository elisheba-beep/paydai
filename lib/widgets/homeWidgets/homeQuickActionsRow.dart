// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:paydai/widgets/homeWidgets/quickAction.dart';
import 'package:flutter/cupertino.dart';
import 'package:paydai/widgets/homeWidgets/topUpMethodsModal.dart';
import 'package:paydai/utils/navigation.dart' as route;

class HomeQuickActionsRow extends StatelessWidget {
  const HomeQuickActionsRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        QuickAction(
          icon: Icons.add_circle_outlined,
          text: 'Top up',
          onTap: (() => {
                showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (context) {
                      return const TopUpMethodsModal();
                    })
              }),
        ),
        QuickAction(
          icon: Icons.swap_horizontal_circle,
          text: 'Swap',
          onTap: (() => {
                Navigator.pushNamed(
                  context,
                  route.swap,
                ),
              }),
        ),
        QuickAction(
          icon: CupertinoIcons.ellipsis_circle_fill,
          text: 'More',
          onTap: (() => {}),
        ),
      ],
    );
  }
}
