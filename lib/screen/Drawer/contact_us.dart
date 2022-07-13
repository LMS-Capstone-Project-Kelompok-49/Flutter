import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

import '../../widget/heading_text.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "Contact Us",
            style: TextStyle(
              color: Color(0xFF00AFB9),
            ),
          ),
          leading: IconButton(
            onPressed: () {
              // Navigator.pop(
              //     context, MaterialPageRoute(builder: (context) => Drawer()));
            },
            icon: Icon(Icons.arrow_back),
            color: Color(0xFF00AFB9),
          ), 
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            alignment: Alignment.center,
            child: Column(
              children: [
                SizedBox(
                  height: 38,
                ),
                Text(
                  "Have Some Question?",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
                Text(
                  "Thank you for being interested in our course website, we will always answer all the questions you want to ask regarding this course activity ",
                  style: TextStyle(),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                Text(
                  "You can send questions directly through the form below, or you can use the alternative contacts we have provided",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30),
                Row(
                  children: [
                    Text(
                      "Contact Us",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF00AFB9),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30),
                Column(
                  children: <Widget>[
                    inputFile(
                        label: "First Name", placeholder: "Your first name"),
                    inputFile(
                        label: "Last Name", placeholder: "Your last name"),
                    inputFile(
                        label: "Email Address",
                        obscureText: true,
                        placeholder: "Your email address"),
                    inputFile(
                        label: "Phone Number",
                        placeholder: "Your phone number"),
                    inputfile2(
                      label: "Message",
                      placeholder: "Type your text",
                    ),
                    SizedBox(height: 40),
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
                              "Send Message",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    ListView()
                  ],
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
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
              hintText: placeholder,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide(color: Colors.grey),
              ),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey))),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget inputfile2({label, placeholder, obscureText = false}) {
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
            maxLines: 5,
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
        ]);
  }
}
