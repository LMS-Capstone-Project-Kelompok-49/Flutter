import 'package:flutter/material.dart';

import 'package:learnitnow/models/explore.dart';
import 'package:learnitnow/models/our_learning.dart';

import 'detail.dart';

class ExploreCard extends StatelessWidget {
  const ExploreCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(explore.length, (index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DetailExplore()));
              },
              child: Container(
                height: size.width * .40,
                width: size.width * .40,
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Color(0xFF00899F),
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 15.0,
                      offset: const Offset(0, 7),
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 35.0,
                      width: 35.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xFF00899F).withOpacity(0.7),
                        borderRadius: BorderRadius.circular(15.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xFF00899F).withOpacity(0.5),
                            spreadRadius: 0.0,
                            blurRadius: 6.0,
                            offset: const Offset(0, 2),
                          )
                        ],
                      ),
                      // child: Container(
                      //   child: SvgPicture.asset(
                      //     ourLearning[index]['icon'],
                      //     color: Colors.white,
                      //     width: 15.0,
                      //   ),
                      // ),
                    ),
                    Text(
                      explore[index]['title'],
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 0.0),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
