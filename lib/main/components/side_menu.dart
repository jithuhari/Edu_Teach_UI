import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset(
                'assets/images/logo.png',
              ),
            ),
            DrawerListTile(
              press: () {},
              svgSrc: 'assets/icons/menu_dashbord.svg',
              title: 'DashBoard',
            ),
            DrawerListTile(
              press: () {},
              svgSrc: 'assets/icons/menu_task.svg',
              title: 'Courses',
            ),
            DrawerListTile(
              press: () {},
              svgSrc: 'assets/icons/menu_store.svg',
              title: 'Resources',
            ),
            DrawerListTile(
              press: () {},
              svgSrc: 'assets/icons/one_drive.svg',
              title: 'Learning Plan',
            ),
            DrawerListTile(
              press: () {},
              svgSrc: 'assets/icons/menu_doc.svg',
              title: 'Chats',
            ),
            DrawerListTile(
              press: () {},
              svgSrc: 'assets/icons/menu_setting.svg',
              title: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.black,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
