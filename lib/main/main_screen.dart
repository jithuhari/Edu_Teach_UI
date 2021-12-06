import 'package:eduteach_ui_test/controllers/menu_controller.dart';
import 'package:eduteach_ui_test/dashboard/dash_board_screen.dart';
import 'package:eduteach_ui_test/responsive.dart';
import 'package:eduteach_ui_test/upcoming_and_achievement/upcomimg_achievement_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
          child: Row(
        children: [
          if (Responsive.isDesktop(context))
            Expanded(
              flex: 2,
              child: SideMenu(),
            ),
          Expanded(
            flex: 6,
            child: DashBoardScreen(),
          ),
          if (!Responsive.isMobile(context))
            Expanded(
              flex: 2,
              child: UpcomingAndAchievementScreen(),
            ),
        ],
      )),
    );
  }
}
