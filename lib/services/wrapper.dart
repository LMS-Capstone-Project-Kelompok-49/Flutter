// import 'package:flutter/material.dart';
// import 'package:learnitnow/screen/home.dart';
// import 'package:learnitnow/screen/login.dart';
// import 'package:learnitnow/services/auth.dart';
// import 'package:provider/provider.dart';

// import '../models/user.dart';

// class Wrapper extends StatelessWidget {
//   const Wrapper({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final authService = Provider.of<AuthService>(context);
//     return StreamBuilder<User?>(
//       stream: authService.user,
//       builder: (_, AsyncSnapshot<User?> snapshot) {
//         if (snapshot.connectionState == ConnectionState.active) {
//           final User? user = snapshot.data;
//           return user == null ? const Login() : Home();
//         } else {
//           return const Scaffold(
//             body: Center(
//               child: CircularProgressIndicator(),
//             ),
//           );
//         }
//       }
//     );
//   }
// }