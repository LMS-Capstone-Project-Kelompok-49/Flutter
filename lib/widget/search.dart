import 'package:flutter/material.dart';


class Search extends StatefulWidget {
  const Search({
    Key? key,
    required this.hintField,
    this.backgroundColor,
  }) : super(key: key);

  final String hintField;
  final Color? backgroundColor;

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String assetImg = 'assets/images/';
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 50.0,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(10.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 40.0,
            width: 40.0,
            alignment: Alignment.center,
            // child: Container(
            //   child: SvgPicture.asset(
            //     assetImg + 'search_icon.svg',
            //     color: Color(0xFF707070).withOpacity(0.5),
            //     height: 15.0,
            //   ),
            // ),
          ),
          Flexible(
            child: Container(
              width: size.width,
              height: 38,
              alignment: Alignment.topCenter,
              child: TextField(
                style: const TextStyle(fontSize: 15),
                cursorColor: Color(0xFF000000),
                decoration: InputDecoration(
                  hintText: widget.hintField,
                  hintStyle: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF707070).withOpacity(0.5),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const SizedBox(width: 10.0),
        ],
      ),
    );
  }
}
