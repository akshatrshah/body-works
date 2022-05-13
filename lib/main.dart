import 'package:body_works/fitness_page.dart';
import 'package:body_works/login.dart';
import 'package:body_works/player.dart';
import 'package:flutter/material.dart';
import 'package:body_works/onboarding.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}
