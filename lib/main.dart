import 'package:flutter/material.dart';
import 'package:flutter_it14proj/loginPage.dart';
import 'package:flutter_it14proj/colors.dart';
import 'package:flutter_it14proj/navBar.dart';
import 'package:flutter_it14proj/profile.dart';
import 'package:flutter_it14proj/splash.dart';
import 'package:flutter_it14proj/welcomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: mobileBackgroundColor,
        useMaterial3: true,
        //  textTheme: GoogleFonts.inter(Theme.of(context).textTheme.displaySmall)
      ),
      home: const NavBarPage(),
      routes: {
        'welcomePage': (context) => const WelcomePage(),
        'loginPage': (context) => const LoginPage(),
        'profilePage': (context) => const ProfilePage(),
        'navBarPage': (context) => const NavBarPage()

        //add routes here ok
      },
    );
  }
}
