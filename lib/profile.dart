import 'package:flutter/material.dart';

class my_profile extends StatefulWidget {
  @override
  State<my_profile> createState() => _my_profileState();
}

class _my_profileState extends State<my_profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('profile_bg.jpg'),
                fit: BoxFit.cover,
                opacity: 0.3)),
      ),
    );
  }
}
