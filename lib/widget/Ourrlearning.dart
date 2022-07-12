import 'dart:js';

import 'package:flutter/material.dart';



class Ourlearning extends StatelessWidget {
  const Ourlearning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final ThemeData theme = Theme.of(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
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
          Container(
            margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
            width: MediaQuery.of(context).size.width,
            height: 250,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 20, 153, 160),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.6),
                      offset: Offset(0.0, 10.0),
                      blurRadius: 10.0,
                      spreadRadius: -6.0)
                ]),
          )
        ],
      ),
    );
  }
}
