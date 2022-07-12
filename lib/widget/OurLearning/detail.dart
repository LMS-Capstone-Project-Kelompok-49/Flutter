import 'package:flutter/material.dart';

import 'Card.dart';

class Ourlearning extends StatelessWidget {
  const Ourlearning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);
    return SingleChildScrollView(
        child: Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                "Our Learning Opportunity",
                style: theme.textTheme.titleLarge,
              ),
            ),
            Text(
              "See all",
              style: theme.textTheme.titleMedium
                  ?.copyWith(color: theme.colorScheme.primary),
            ),
          ],
        ),
      ),
      SizedBox(height: 30),
      OurCard()
    ]));
  }
}
