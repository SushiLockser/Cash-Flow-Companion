import 'package:flutter/material.dart';
import 'package:flutter_it14proj/loginPage.dart';
import 'package:flutter_it14proj/colors.dart';
import 'package:flutter_it14proj/moneyIn.dart';
import 'package:flutter_it14proj/moneyOut.dart';
import 'package:flutter_it14proj/navBar.dart';
import 'package:flutter_it14proj/profile.dart';
import 'package:flutter_it14proj/splash.dart';
import 'package:flutter_it14proj/viewGoal.dart';
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
      debugShowCheckedModeBanner: false,
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
        'navBarPage': (context) => const NavBarPage(),
<<<<<<< HEAD
=======
        'viewGoal': (context) => const ViewGoal(),
        'moneyIn': (context) => const MoneyIn(),
        'moneyOut': (context) => const MoneyOut()
>>>>>>> 54fd9e4fd81daf012d422df0de3be492b2b73f40

        //add routes here
      },
    );
  }
}
