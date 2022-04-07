import 'package:body_works/fitness_page.dart';
import 'package:body_works/meal.dart';
import 'package:body_works/profile.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  final screens = [home(), fitnessPage(), meals(), my_profile()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[index],
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
              indicatorColor: Colors.green[100],
              labelTextStyle: MaterialStateProperty.all(
                  const TextStyle(fontWeight: FontWeight.bold))),
          child: NavigationBar(
            height: 65,
            selectedIndex: index,
            onDestinationSelected: (index) =>
                setState(() => this.index = index),
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(
                  icon: Icon(Icons.fitness_center), label: 'Workout'),
              NavigationDestination(
                  icon: Icon(Icons.food_bank), label: 'Meals'),
              NavigationDestination(icon: Icon(Icons.person), label: 'Profile')
            ],
          ),
        ));
  }
}
