import 'package:body_works/beginner_workout.dart';
import 'package:body_works/horizontallist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:body_works/constants.dart';
import 'package:body_works/widgets/search_bar.dart';

import 'expert_workout.dart';
import 'intermediate_workout.dart';

class CardItem {
  final String urlimage;
  final String title;
  final String subtitle;

  const CardItem({
    this.urlimage,
    this.title,
    this.subtitle,
  });
}

class workout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .5,
            decoration: BoxDecoration(
              color: kBlueLightColor,
              //image: DecorationImage(image: AssetImage("workout_bg.jpg")),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      "Workout",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          .copyWith(fontWeight: FontWeight.w900),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Manage your workout schedule",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: size.width * .6, // it just take 60% of total width
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Wrap(
                      spacing: 40,
                      runSpacing: 50,
                      children: <Widget>[
                        Container(
                          width: 2000,
                          color: Colors.red,
                          child: SeassionCard(
                            seassionNum: "Beginners",
                            press: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          beginnerWorkout())));
                            },
                          ),
                        ),
                        Container(
                          width: 2000,
                          color: Colors.red,
                          child: SeassionCard(
                            seassionNum: "Intermediate",
                            press: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          intermediateWorkout())));
                            },
                          ),
                        ),
                        Container(
                          width: 2000,
                          color: Colors.red,
                          child: SeassionCard(
                            seassionNum: "Expert",
                            press: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => expertWorkout())));
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text('Akshat')
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildcard() => Container(
        width: 200,
        color: Colors.red,
      );
}

class SeassionCard extends StatelessWidget {
  final String seassionNum;
  final bool isDone;
  final Function press;
  const SeassionCard({
    Key key,
    this.seassionNum,
    this.isDone = false,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: constraint.maxWidth / 2 -
              10, // constraint.maxWidth provide us the available with for this widget
          // padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: kShadowColor,
              ),
            ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: press,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 42,
                      width: 43,
                      decoration: BoxDecoration(
                        color: isDone ? kBlueColor : Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(color: kBlueColor),
                      ),
                      child: Icon(
                        Icons.play_arrow,
                        color: isDone ? Colors.white : kBlueColor,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "$seassionNum",
                      style: Theme.of(context).textTheme.subtitle1,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
