import 'package:eduteach_ui_test/constraints.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/card_widget.dart';
import 'components/text_field_widget.dart';
import 'components/vertical_line.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.grey.shade300,
        child: Column(
          children: [
            TextFieldWidget(),
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: double.infinity,
                    height: 150,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(defaultPadding),
                                child: Text(
                                  'Welcome , Jhony Vino',
                                  style: TextStyle(
                                      letterSpacing: 2,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(defaultPadding),
                                child: Text(
                                    'Get Organized With your courses .Keep going for reach your goal.and unlock your achievement.'),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image(
                          height: 150,
                          width: 150,
                          image: AssetImage('assets/images/user.png')),
                    ],
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Your Courses',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Row(
                  children: [
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_right,
                      color: Colors.black,
                    )
                  ],
                )
              ],
            ),
            Row(
              children: const [
                Expanded(
                  child: CardWidget(
                    authorName: 'Antony R',
                    color: Colors.redAccent,
                    courseName: 'Visual Design',
                    noOfLesson: 25,
                    svg: 'assets/icons/doc_file.svg',
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    authorName: 'Hanna P',
                    color: Colors.blueAccent,
                    courseName: 'Designing',
                    noOfLesson: 55,
                    svg: 'assets/icons/excle_file.svg',
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    authorName: 'Ravi S',
                    color: Colors.greenAccent,
                    courseName: 'Flutter',
                    noOfLesson: 10,
                    svg: 'assets/icons/Figma_file.svg',
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Course OverView',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Row(
                  children: [
                    Text(
                      'Last Week',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                    )
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: VerticalLine(),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: VerticalLine(),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: VerticalLine(),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: VerticalLine(),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: VerticalLine(),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: VerticalLine(),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: VerticalLine(),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  VerticalLineName(
                    circleColor: Colors.blue,
                    name: 'UI UX Design',
                  ),
                  VerticalLineName(
                    circleColor: Colors.red,
                    name: 'Product Design',
                  ),
                  VerticalLineName(
                    circleColor: Colors.orange,
                    name: 'Visual Design',
                  ),
                  VerticalLineName(
                    circleColor: Colors.grey,
                    name: 'Case Study',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class VerticalLineName extends StatelessWidget {
  const VerticalLineName({
    Key? key,
    required this.circleColor,
    required this.name,
  }) : super(key: key);

  final Color circleColor;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundColor: circleColor,
          radius: 10,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          name,
          style: TextStyle(color: Colors.black),
        )
      ],
    );
  }
}
