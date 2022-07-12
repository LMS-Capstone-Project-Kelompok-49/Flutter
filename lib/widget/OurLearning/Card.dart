import 'package:flutter/material.dart';

class OurCard extends StatelessWidget {
  const OurCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
