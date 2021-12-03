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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            resultName,
            style: TextStyle(color: Colors.black),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 100,
            height: 5,
            decoration: BoxDecoration(color: progressColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '$percentage %',
            style: TextStyle(color: Colors.black),
          ),
        )
      ],
    );
  }
}
