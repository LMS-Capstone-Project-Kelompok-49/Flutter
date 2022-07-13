import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isPasswordTextField = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFFF5F5F5),
          title: Text(
            "Profile",
            style: TextStyle(
              color: Color(0xFF00AFB9),
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Drawer()));
            },
            icon: Icon(Icons.arrow_back),
            color: Color(0xFF00AFB9),
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.only(left: 15, top: 20, right: 15),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: ListView(
              children: [
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                          border: Border.all(width: 4, color: Colors.white),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1))
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://i1.wp.com/www.eventstodayz.com/wp-content/uploads/2018/04/cute-profile-pic-2018.jpg?fit=768%2C768&ssl=1"),
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(width: 4, color: Colors.white),
                                color: Colors.blue),
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          ))
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Center(
                  child: Text("Update your profile and personal details"),
                ),
                SizedBox(height: 30),
                builtTextField("First Name", "Lutfhi", false),
                builtTextField("Last Name", "Arzaki", false),
                builtTextField("Email Address", "Lutfhi@gmail.com", false),
                builtTextField("Password", "***************", true),
                builtTextField("Confirm Password", "***************", true),
                SizedBox(height: 15),
                Card(
                  color: Color(0xFF00AFB9),
                  elevation: 5,
                  child: Container(
                    height: 50,
                    child: InkWell(
                      splashColor: Colors.white,
                      onTap: () {},
                      child: Center(
                        child: Text(
                          "save",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Widget builtTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        obscureText: isPasswordTextField ? isPasswordTextField : false,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(bottom: 3),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4.0))),
            labelText: labelText,
            hintText: placeholder,
            prefixIcon: Padding(padding: EdgeInsets.all(1)),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintStyle: TextStyle(
                fontSize: 10, fontWeight: FontWeight.bold, color: Colors.grey)),
      ),
    );
  }
}
