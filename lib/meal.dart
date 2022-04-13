import 'package:flutter/material.dart';

class meals extends StatefulWidget {
  @override
  State<meals> createState() => _mealsState();
}

class _mealsState extends State<meals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('meal_bg.jpg'),
                fit: BoxFit.cover,
                opacity: 0.3)),
      ),
    );
  }
}
