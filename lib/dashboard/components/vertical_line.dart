import 'package:flutter/material.dart';

class VerticalLine extends StatelessWidget {
  const VerticalLine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 5,
          height: MediaQuery.of(context).size.height * .07,
          decoration: BoxDecoration(color: Colors.grey),
        ),
        Container(
          width: 5,
          height: MediaQuery.of(context).size.height * .11,
          decoration: BoxDecoration(color: Colors.orange),
        ),
        Container(
          width: 5,
          height: MediaQuery.of(context).size.height * .12,
          decoration: BoxDecoration(color: Colors.red),
        ),
        Container(
          width: 5,
          height: MediaQuery.of(context).size.height * .1,
          decoration: BoxDecoration(color: Colors.blue),
        ),
      ],
    );
  }
}
