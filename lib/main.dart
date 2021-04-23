/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/pages/profile/profile10.dart';
import 'package:flutter_ui_challenges/src/pages/profile/profile11.dart';
import 'package:flutter_ui_challenges/src/pages/profile/profile4.dart';
import 'package:flutter_ui_challenges/src/pages/profile/profile8.dart';
import 'package:flutter_ui_challenges/src/pages/profile/profile2.dart';
import 'package:flutter_ui_challenges/src/pages/profile/profile3.dart';
import 'core/presentation/pages/about.dart';
import 'core/presentation/pages/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // https://stackoverflow.com/questions/44004451/navigator-operation-requested-with-a-context-that-does-not-include-a-navigator
  final _navKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navKey,
      debugShowCheckedModeBanner: false,
      title: 'Flutter UIs',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey.shade300,
        primarySwatch: Colors.red,
        accentColor: Colors.indigo,
      ),
      // home: ProfileTenPage(),
      home: ProfileEightPage(),
      routes: {
        // "auth_home": (_) => AuthHomePage(),
        "challenge_home": (_) => HomePage(),
        "about": (_) => AboutPage(),
        // "signup": (_) => SignupPage(),
        // "profile": (_) => ProfilePage(),
      },
    );
  }
}
