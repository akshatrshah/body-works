import 'package:body_works/beginner_workout.dart';
import 'package:flutter/material.dart';
import 'package:body_works/constants.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'expert_workout.dart';
import 'intermediate_workout.dart';
import 'package:url_launcher/url_launcher.dart';

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
                    SizedBox(height: 20),
                    Container(
                        height: 256,
                        margin: EdgeInsets.symmetric(vertical: 20),
                        padding: EdgeInsets.all(10),
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
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              buildcard1(),
                              SizedBox(
                                width: 12,
                              ),
                              buildcard2(),
                              SizedBox(
                                width: 12,
                              ),
                              buildcard3(),
                              SizedBox(
                                width: 12,
                              ),
                              buildcard4(),
                              SizedBox(
                                width: 12,
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildcard1() => Container(
          child: ElevatedButton(
              child: Card(
        child: Column(children: [
          Text('Bully Juice'),
          Image.network(
            'https://yt3.ggpht.com/ytc/AKedOLTOA5GsyQKKxTmfbit4Y29o_lcPgCiXtaiWKj2nDw=s900-c-k-c0x00ffffff-no-rj',
            width: 200,
            height: 200,
          )
        ]),
      )));
  Widget buildcard2() => Container(
        child: Column(children: [
          Text('Fraser Wilson'),
          Image.network(
            'https://lirp.cdn-website.com/96c900e6/dms3rep/multi/opt/WP-2038x3000-ad75e7f2-46890ba8-396w.jpg',
            width: 200,
            height: 200,
          )
        ]),
      );
  Widget buildcard3() => Container(
        child: Column(children: [
          Text('THENX'),
          Image.network(
            'https://i1.sndcdn.com/artworks-000485979492-jhrv5y-t500x500.jpg',
            width: 200,
            height: 200,
          )
        ]),
      );
  Widget buildcard4() => Container(
        child: Column(children: [
          Text('Fitnesstype'),
          Image.network(
            'https://yt3.ggpht.com/ytc/AKedOLTnTHNsYfyTubTyy04dVi6Jpr4itwVT_fouLJOw-Q=s900-c-k-c0x00ffffff-no-rj',
            width: 200,
            height: 200,
          )
        ]),
      );
  Widget buildcard5() => Container(
        child: Column(children: [
          Text('Name1'),
          Image.network(
            'https://yt3.ggpht.com/ytc/AKedOLTOA5GsyQKKxTmfbit4Y29o_lcPgCiXtaiWKj2nDw=s900-c-k-c0x00ffffff-no-rj',
            width: 200,
            height: 200,
          )
        ]),
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
