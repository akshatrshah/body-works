import 'package:body_works/constants.dart';
import 'package:body_works/timer.dart';
import 'package:flutter/material.dart';

class intermediateWorkout extends StatefulWidget {
  @override
  State<intermediateWorkout> createState() => _intermediateWorkoutState();
}

class _intermediateWorkoutState extends State<intermediateWorkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Center(child: Text('Intermediate')),
          backgroundColor: kBlueLightColor,
        ),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "If you want something you’ve never had, you must be willing to do something you’ve never done.",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Text(
                    '~Thomas Jefferson',
                    textAlign: TextAlign.right,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              color: Colors.black,
            ),
            Text(
              'Lets Get Started',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Card(
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/toetouch.jpeg'),
                  fit: BoxFit.cover,
                )),
                child: ListTile(
                  title: Text(
                    "Toe Touches",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => workout_timer()));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/spotjog.jpg'),
                  fit: BoxFit.cover,
                )),
                child: ListTile(
                  title: Text("Spot Jogging",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => workout_timer()));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/Pushup.jpeg'),
                  fit: BoxFit.cover,
                )),
                child: ListTile(
                  title: Text("Push-Ups",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => workout_timer()));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/plank.webp'),
                  fit: BoxFit.cover,
                )),
                child: ListTile(
                  title: Text("Planks",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => workout_timer()));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/burpees.jpg'),
                  fit: BoxFit.cover,
                )),
                child: ListTile(
                  title: Text("Burpees",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => workout_timer()));
                  },
                ),
              ),
            ),
            Card(
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/jumping jacks.png'),
                  fit: BoxFit.cover,
                )),
                child: ListTile(
                  title: Text("Jumping Jacks",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => workout_timer()));
                  },
                ),
              ),
            ),
            Card(
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/inclined pushup.jpg'),
                  fit: BoxFit.cover,
                )),
                child: ListTile(
                  title: Text("Inclined Pushups",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => workout_timer()));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/cobra stretch.webp'),
                  fit: BoxFit.cover,
                )),
                child: ListTile(
                  title: Text("Cobra Stretch",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => workout_timer()));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              'Challenge Completed!!',
              style: TextStyle(
                color: Colors.green,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        )));
  }
}
