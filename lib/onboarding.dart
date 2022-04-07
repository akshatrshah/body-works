import 'package:body_works/login.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          globalBackgroundColor: Colors.white,
          pages: [
            PageViewModel(
              title: 'Welcome To Body Works',
              body: 'Stay fit and healthy with us.',
              footer: Image.asset(
                'img4.png',
                width: 20,
                height: 20,
              ),
              image: buildImage('assets/img2.jpg'),
              decoration: getDecoration(),
            ),
            PageViewModel(
                title: 'Workout Anywhere',
                body:
                    'You can do your workout at home without equpements,outside or at the gym.',
                footer: Image.asset(
                  'img4.png',
                  width: 20,
                  height: 20,
                ),
                image: buildImage('assets/img3.png'),
                decoration: getDecoration()),
            PageViewModel(
                title: 'Stay healthy',
                body: 'We want you to enjoy the program, stay healthy and fit.',
                image: buildImage('assets/img6.jpg'),
                decoration: getDecoration()),
          ],
          done: Text('Next'),
          onDone: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
        ),
      );
}

PageDecoration getDecoration() => PageDecoration(
    titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    bodyTextStyle: TextStyle(fontSize: 20),
    descriptionPadding: EdgeInsets.all(8),
    imagePadding: EdgeInsets.all(20));
Widget buildImage(String path) {
  return Center(
      child: Image.asset(
    path,
    width: 350,
  ));
}

double _getPercent(int pageIndex) {
  switch (pageIndex) {
    case 0:
      return 0.25;
    case 1:
      return 0.65;
    case 2:
      return 1;
    default:
      return 0;
  }
}
