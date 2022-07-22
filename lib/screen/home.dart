import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatelessWidget {
  const Home({Key? key, required this.onLogout}) : super(key: key);
final Function()? onLogout;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(onPressed:onLogout, child:Text('Logout'))
    
    );
  }
}