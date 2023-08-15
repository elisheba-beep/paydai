import 'package:flutter/material.dart';
import 'package:paydai/widgets/homeWidgets/greenExchangeIcon.dart';

class ExchangeDetails extends StatelessWidget {
  const ExchangeDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          children: [
            Stack(
              children: [
                VerticalDivider(
                  width: 20,
                  thickness: 1.5,
                  color: Colors.grey[200],
                ),
                const GreenExchangeIcon(
                  icon: Icons.close,
                  right: 0,
                ),
                const GreenExchangeIcon(
                  icon: Icons.remove,
                  top: 40,
                ),
                const GreenExchangeIcon(
                  icon: Icons.add,
                  bottom: 0,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(
                10.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'N1 = \$0.001',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Fee = N0.00',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Instant',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
