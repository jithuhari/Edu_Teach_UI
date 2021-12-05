import 'package:flutter/material.dart';

class ProgressBarWidget extends StatelessWidget {
  const ProgressBarWidget({
    Key? key,
    required this.resultName,
    required this.progressColor,
    required this.percentage,
  }) : super(key: key);

  final String resultName;
  final Color progressColor;
  final int percentage;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            resultName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.black),
          ),
          Expanded(
            child: Container(
              width: 100,
              height: 5,
              decoration: BoxDecoration(color: progressColor),
            ),
          ),
          Text(
            '$percentage %',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}
