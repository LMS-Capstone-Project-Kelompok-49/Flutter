import 'package:flutter/material.dart';


class PeopleScreen extends StatelessWidget {
  const PeopleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("People"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
    );
  }
}
