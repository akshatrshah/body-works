import 'package:flutter/material.dart';
import 'package:body_works/onboarding.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: onboarding(),
    );
  }
}
