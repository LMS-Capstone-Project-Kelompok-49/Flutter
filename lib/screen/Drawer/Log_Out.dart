import 'package:flutter/material.dart';


class LogOutScreen extends StatelessWidget {
  const LogOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log Out"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
    );
  }
}
