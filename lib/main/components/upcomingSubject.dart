import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UpcomingSubjectWidget extends StatelessWidget {
  const UpcomingSubjectWidget({
    Key? key,
    required this.subName,
    required this.date,
  }) : super(key: key);

  final String subName;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade400,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset('assets/icons/doc_file.svg'),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  subName,
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.lock_clock_outlined,
                      size: 15,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      date,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.green.shade100,
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        'Very Soon',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
