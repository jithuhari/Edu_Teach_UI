import 'package:eduteach_ui_test/constraints.dart';
import 'package:eduteach_ui_test/dashboard/dash_board_screen.dart';
import 'package:eduteach_ui_test/upcoming_and_achievement/upcomimgandachievementscreen.dart';
import 'package:flutter/material.dart';

import 'components/progress_bar_widget.dart';
import 'components/side_menu.dart';
import 'components/upcomingSubject.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          Expanded(
            flex: 2,
            child: SideMenu(),
          ),
          Expanded(
            flex: 6,
            child: DashBoardScreen(),
          ),
          Expanded(
            flex: 2,
            child: UpcomingAndAchievementScreen(),
          ),
        ],
      )),
    );
  }
}
