import 'package:flutter/material.dart';

import '../core/constanst.dart';

class BrowseCategory extends StatelessWidget {
  const BrowseCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Column(
      children: [
        // Title Row
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  "Explore by categories",
                  style: theme.textTheme.titleLarge,
                ),
              ),
            ],
          ),
        ),

        // First courses row
        Row(
          children: [
            _buildCoursePanel(
              context,
              // imagePath: 'assets/images/course_image_1.png',
              title: "Design1",
            ),
            _buildCoursePanel(
              context,
              // imagePath: 'assets/images/course_image_2.png',
              title: "Design2",
            ),
          ],
        ),

        // Second courses row
        Row(
          children: [
            _buildCoursePanel(
              context,
              // imagePath: 'assets/images/course_image_3.png',
              title: "Design3 ",
            ),
            _buildCoursePanel(
              context,
              // imagePath: 'assets/images/course_image_4.png',
              title: "Design4",
            ),
          ],
        ),
      ],
    );
  }

  Expanded _buildCoursePanel(
    BuildContext context, {
    // required String imagePath,
    required String title,
  }) {
    final ThemeData theme = Theme.of(context);
    final Size size = MediaQuery.of(context).size;
    return Expanded(
      child: MyCard(
        color: Color(0xFF00AFB9),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Container()),
          );
        },
        borderRadius: const BorderRadius.all(Radius.circular(15.0)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Image.asset(
              //   // imagePath,
              //   width: size.width * 0.25,
              // ),
              Text(
                title,
                style: theme.textTheme.titleMedium,
              ),
              // Text(
              //   "18 courses",
              //   style: theme.textTheme.titleSmall,
              // ),
            ],
          ),
        ),
      ),
    );
    // );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({
    required this.child,
    this.onPressed,
    this.elevation,
    this.borderRadius,
    this.padding,
    this.color,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final Function()? onPressed;
  final double? elevation;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? padding;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? defaultPadding,
      child: Material(
        borderRadius: borderRadius ?? defaultBorderRadius,
        elevation: elevation ?? defaultElevation,
        color: color,
        child: InkWell(
          onTap: onPressed,
          borderRadius: borderRadius ?? defaultBorderRadius,
          child: Padding(
            padding: defaultPadding,
            child: Center(
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
