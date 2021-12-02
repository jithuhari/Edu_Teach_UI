import 'package:eduteach_ui_test/constraints.dart';
import 'package:flutter/material.dart';

import 'components/text_field_widget.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          )
        ],
      ),
    );
  }
}
