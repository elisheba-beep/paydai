import 'package:flutter/material.dart';
import 'package:paydai/widgets/quickAction.dart';
import 'package:flutter/cupertino.dart';

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
          onTap: (() => {}),
        ),
        QuickAction(
          icon: Icons.swap_horizontal_circle,
          text: 'Swap',
          onTap: (() => {}),
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
