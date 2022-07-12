import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widget/Navigation_Drawer.dart';
import '../widget/OurLearning/detail.dart';

import '../widget/heading_text.dart';
import '../widget/search.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40),
        child: AppBar(
          elevation: 0,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          ],
          backgroundColor: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
      ),
      drawer: NavigationDrawer(),
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              ClipPath(
                // clipper: BottomClipper(),
                child: Container(
                  width: size.width,
                  height: 300,
                  decoration: const BoxDecoration(
                    color: Color(0xFF00AFB9),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50.0 + 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Headingtext(
                          title: "Welcome Back, Lutfhi",
                          subTitle: "You have some tasks to complete today!",
                          color: Color(0xFFFFFFFF),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    const Search(
                      hintField: "Search anything",
                      backgroundColor: Color(0xFFF5F5F5),
                    ),
                    const SizedBox(height: 30),

                    // const SizedBox(
                    //   height: 50.0 - 30,
                    // ),
                    // // const CustomCard(),
                    // const SizedBox()
                  ],
                ),
              ),
            ],
          ),
          // const SizedBox(height: 20),
          // const Padding(
          //   padding: EdgeInsets.only(left: 25.0, right: 25.0),
          //   child: Text(
          //     "Our Learning Opportunity",
          //     style: TextStyle(
          //         color: Color(0xFF00AFB9),
          //         fontSize: 20,
          //         fontWeight: FontWeight.w800),
          //   ),
          // ),

          const SizedBox(height: 15),
          const Padding(padding: EdgeInsets.all(6)),
          const Ourlearning(),
          const SizedBox(
            height: 15,
          ),

          // const SizedBox(height: 20),
          // const Padding(padding: EdgeInsets.all(6)),

          // const Padding(
          //   padding: EdgeInsets.only(left: 25.0, right: 25.0),
          //   child: Text(
          //     "Category",
          //     style: TextStyle(
          //         color: Color(0xFF00AFB9),
          //         fontSize: 20,
          //         fontWeight: FontWeight.w800),
          //   ),
          // ),
          // const SizedBox(height: 15),
          // const Padding(padding: EdgeInsets.all(6)),
          // Categories()
        ],
      ),
    );
  }
}
