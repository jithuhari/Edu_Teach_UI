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
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.alarm,
                        color: Colors.black,
                      ),
                      Image(
                          width: 50,
                          height: 50,
                          image: AssetImage('assets/images/profile_pic.png'))
                    ],
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('UX Principle',style: TextStyle(
                color: Colors.black
              ),),

              Container(
                width: 100,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.lightBlue
                ),
              ),
              Text('50%',
              style: TextStyle(
                color: Colors.black
              ),
              )
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Branding',style: TextStyle(
                color: Colors.black
              ),),

              Container(
                width: 100,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.lightGreen
                ),
              ),
              Text('40%',
              style: TextStyle(
                color: Colors.black
              ),
              )
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Design Guide',style: TextStyle(
                color: Colors.black
              ),),

              Container(
                width: 100,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.yellowAccent
                ),
              ),
              Text('45%',
              style: TextStyle(
                color: Colors.black
              ),
              )
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Productive',style: TextStyle(
                color: Colors.black
              ),),

              Container(
                width: 100,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.blue
                ),
              ),
              Text('55%',
              style: TextStyle(
                color: Colors.black
              ),
              )
            ],
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


          
          
                ],
              ),
              ),
        ],
      )),
    );
  }
}
