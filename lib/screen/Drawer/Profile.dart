import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                inputFile(
                  label: "First Name",
                  placeholder: "Lutfhi",
                ),
                inputFile(
                  label: "Last Name",
                  placeholder: "Arzaki",
                ),
                inputFile(
                  label: "Email Address",
                  placeholder: "Lutfhi@gmail.com",
                ),
                inputFile(
                  label: "Password",
                  placeholder: "***************",
                ),
                inputFile(
                  label: "Confirm Password",
                  placeholder: "***************",
                ),
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

  Widget inputFile({label, placeholder, obscureText = false}) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            label,
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.black87),
          ),
          SizedBox(
            height: 5,
          ),
          TextField(
            obscureText: obscureText,
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                hintText: placeholder,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey))),
          ),

          // Widget builtTextField(
          //     String labelText, String placeholder, bool isPasswordTextField) {
          //   return Padding(
          //     padding: EdgeInsets.only(bottom: 10),
          //     child: TextField(
          //       obscureText: isPasswordTextField ? isPasswordTextField : false,
          //       decoration: InputDecoration(
          //           contentPadding: EdgeInsets.only(bottom: 3),
          //           border: OutlineInputBorder(
          //               borderRadius: BorderRadius.all(Radius.circular(4.0))),
          //           labelText: labelText,
          //           hintText: placeholder,
          //           prefixIcon: Padding(padding: EdgeInsets.all(1)),
          //           floatingLabelBehavior: FloatingLabelBehavior.always,
          //           hintStyle: TextStyle(
          //               fontSize: 10, fontWeight: FontWeight.bold, color: Colors.grey)),
          //     ),
        ]);
  }
}
