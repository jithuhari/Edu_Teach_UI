import 'package:eduteach_ui_test/controllers/menu_controller.dart';
import 'package:eduteach_ui_test/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

main() {
  Provider.debugCheckInvalidValueType = null;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: Colors.white,
      ),
      home: MultiProvider(
        providers: [
          Provider(
            create: (context) => MenuController(),
          )
        ],
        child: MainScreen(),
      ),
    );
  }
}
