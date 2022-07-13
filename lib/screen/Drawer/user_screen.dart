import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  final String name;
  final String urlImage;
  const UserScreen({Key? key, required this.name, required this.urlImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(name),
        centerTitle: true,
      ),
      body: Image.network(
        urlImage,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}