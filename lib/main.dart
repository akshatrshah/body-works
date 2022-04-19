import 'package:body_works/dashboard.dart';
import 'package:body_works/exercises.dart';
import 'package:body_works/fitness_page.dart';
import 'package:body_works/home_view.dart';
import 'package:body_works/onboarding.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
    );
  }
}
