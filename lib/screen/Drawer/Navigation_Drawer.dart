import 'package:flutter/material.dart';

import 'ItemDrawer/Favorite.dart';
import 'ItemDrawer/Log_Out.dart';
import 'ItemDrawer/People.dart';
import 'ItemDrawer/Updates.dart';
import 'ItemDrawer/UserPage.dart';
import 'ItemDrawer/Wrokflow.dart';

class NavigationDrawer extends StatelessWidget {
  NavigationDrawer({Key? key}) : super(key: key);

  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    final name = "Farida";
    final email = "Farida@gmail.com";
    final urlImage =
        "https://tse1.mm.bing.net/th?id=OIP.vYbUoN5ghSo-HHJ3vHOzvgHaEw&pid=Api&P=0&w=276&h=177";

    return Drawer(
      child: Material(
        color: Colors.white,
        child: ListView(
          padding: padding,
          children: <Widget>[
            buildHeader(
                urlImage: urlImage,
                name: name,
                email: email,
                onClicked: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        UserPage(name: name, urlImage: urlImage)))),
            SizedBox(height: 30),
            buildMenuItem(
              text: "People",
              icon: Icons.people,
              onClicked: () => selectedItem(context, 0),
            ),
            SizedBox(height: 5),
            buildMenuItem(
              text: "Privacy",
              icon: Icons.lock,
              onClicked: () => selectedItem(context, 1),
            ),
            SizedBox(height: 5),
            buildMenuItem(
              text: "Setting",
              icon: Icons.settings,
              onClicked: () => selectedItem(context, 2),
            ),
            SizedBox(height: 5),
            buildMenuItem(
              text: "Send Feedback",
              icon: Icons.chat,
              onClicked: () => selectedItem(context, 3),
            ),
            SizedBox(height: 5),
            buildMenuItem(
              text: "Contact Us",
              icon: Icons.contact_mail_outlined,
              onClicked: () => selectedItem(context, 4),
            ),
            SizedBox(height: 45),
            buildMenuItem(
              text: "Log Out",
              icon: Icons.close,
              onClicked: () => selectedItem(context, 4),
            )
          ],
        ),
      ),
    );
  }

  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) =>
      InkWell(
        onTap: onClicked,
        child: Container(
          padding: padding.add(EdgeInsets.symmetric(
            vertical: 40,
          )),
          child: Row(
            children: [
              // IconButton(onPressed: () {}, icon: Icon(Icons.close)),
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(urlImage),
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  SizedBox(height: 4),
                  Text(
                    email,
                    style: TextStyle(fontSize: 14, color: Colors.black),
                  )
                ],
              )
            ],
          ),
        ),
      );

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.black;
    final hoverColor = Colors.black54;
    final colortext = const Color(0XFF00AFB9);

    return ListTile(
      leading: Icon(icon, color: colortext),
      title: Text(
        text,
        style: TextStyle(color: color),
      ),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();

    switch (index) {
      case 0:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => PeopleScreen()));
        break;
      case 1:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => PrivacyScreen()));
        break;
      case 2:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => WrokflowScreen()));
        break;
      case 3:
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => UpdatesScreen()));
        break;
    }
  }
}
