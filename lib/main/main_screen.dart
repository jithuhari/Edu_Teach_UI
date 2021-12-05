import 'package:eduteach_ui_test/constraints.dart';
import 'package:eduteach_ui_test/dashboard/dash_board_screen.dart';
import 'package:eduteach_ui_test/responsive.dart';
import 'package:eduteach_ui_test/upcoming_and_achievement/upcomimg_achievement_screen.dart';
import 'package:flutter/material.dart';

import 'components/progress_bar_widget.dart';
import 'components/side_menu.dart';
import 'components/upcoming_subject.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          if(Responsive.isDesktop(context))
          Expanded(
            flex: 2,
            child: SideMenu(),
          ),
          Expanded(
            flex: 6,
            child: DashBoardScreen(),
          ),
          if(!Responsive.isMobile(context))
          Expanded(
            flex: 2,
            child: UpcomingAndAchievementScreen(),
          ),
        ],
      )),
    );
  }
}
