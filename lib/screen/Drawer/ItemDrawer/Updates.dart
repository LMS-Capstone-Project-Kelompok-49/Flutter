import 'package:flutter/material.dart';


class UpdatesScreen extends StatelessWidget {
  const UpdatesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Updates"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
    );
  }
}
