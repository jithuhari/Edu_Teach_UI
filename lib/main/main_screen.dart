import 'package:eduteach_ui_test/dashboard/dash_board_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/side_menu.dart';

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
            child: Container(
              color: Colors.grey.shade200,
            ),
          ),
        ],
      )),
    );
  }
}
