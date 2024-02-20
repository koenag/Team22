import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'exploremore.dart';
import 'description_page.dart';
import 'color_palette.dart';
import 'login_screen.dart';
import 'profile_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //NEED TO CHANGE
      home: ExploreMore(),
      //home: Login()
      //home: DescriptionPage(),
      //home: ProfilePage(),
    );
  }
}
