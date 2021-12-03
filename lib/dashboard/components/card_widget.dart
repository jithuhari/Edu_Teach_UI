import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.svg,
    required this.courseName,
    required this.authorName,
    required this.noOfLesson,
    required this.color,
  }) : super(key: key);

  final String svg, courseName, authorName;
  final int noOfLesson;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(svg),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  courseName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'by $authorName',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
                Text(
                  '$noOfLesson lessens left',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
