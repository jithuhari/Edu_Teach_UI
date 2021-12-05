import 'package:eduteach_ui_test/main/components/progress_bar_widget.dart';
import 'package:eduteach_ui_test/main/components/upcoming_subject.dart';
import 'package:flutter/material.dart';

import '../constraints.dart';

class UpcomingAndAchievementScreen extends StatelessWidget {
  const UpcomingAndAchievementScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Icon(
                  Icons.alarm,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(defaultPadding),
                child: Image(
                    width: 50,
                    height: 50,
                    image: AssetImage('assets/images/profile_pic.png')),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  'Latest Results',
                   maxLines: 1,
              overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  'View All',
                   maxLines: 1,
              overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
               Expanded(
                 child: Icon(
                    Icons.arrow_right,
                    color: Colors.black,
                  ),
               ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child:  ProgressBarWidget(
              percentage: 50,
              resultName: 'UI Principle',
              progressColor: Colors.blueAccent,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: ProgressBarWidget(
              percentage: 55,
              resultName: 'Branding',
              progressColor: Colors.redAccent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const ProgressBarWidget(
              percentage: 70,
              resultName: 'design Guide',
              progressColor: Colors.greenAccent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const ProgressBarWidget(
              percentage: 85,
              resultName: 'Productive',
              progressColor: Colors.yellow,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Upcoming',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: const [
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
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: UpcomingSubjectWidget(
              date: '09/03/22',
              subName: 'Understand Wireframing',
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: UpcomingSubjectWidget(
              date: '10/05/22',
              subName: 'Basic 3D Principle',
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: UpcomingSubjectWidget(
              date: '07/06/22',
              subName: 'Prototyping',
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: UpcomingSubjectWidget(
              date: '18/03/22',
              subName: 'Learn Developing',
            ),
          ),
          const Text(
            'Achievement',
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          // Expanded(
          const Image(
            image: AssetImage('assets/images/achievement.png'),
          ),
          // ),
        ],
      ),
    );
  }
}
