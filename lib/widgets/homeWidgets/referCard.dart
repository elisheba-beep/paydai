// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ReferCard extends StatelessWidget {
  const ReferCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.all(
            Radius.circular(
              20,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Earn \$3 every',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'time you invite',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'a friend (T&C\'s apply)',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(
                  20,
                ),
                bottomRight: Radius.circular(
                  20,
                ),
              ),
              child: Image(
                width: 150,
                height: 100,
                image: AssetImage(
                  'assets/images/refer.png',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
