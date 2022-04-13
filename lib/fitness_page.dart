import 'package:flutter/material.dart';

class fitnessPage extends StatefulWidget {
  @override
  State<fitnessPage> createState() => _fitnessPageState();
}

class _fitnessPageState extends State<fitnessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('workout_bg.jpeg'),
                fit: BoxFit.cover,
                opacity: 0.3)),
      ),
    );
  }
}
