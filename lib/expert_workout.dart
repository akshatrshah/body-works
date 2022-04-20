import 'package:body_works/constants.dart';
import 'package:body_works/timer.dart';
import 'package:flutter/material.dart';

class expertWorkout extends StatefulWidget {
  @override
  State<expertWorkout> createState() => _expertWorkoutState();
}

class _expertWorkoutState extends State<expertWorkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Center(child: Text('Expert')),
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
                      "If you don’t make time for exercise, you’ll probably have to make time for illness.",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Text(
                    '~Robin Sharma',
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
            Card(
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/mountain climber.jpg'),
                  fit: BoxFit.cover,
                )),
                child: ListTile(
                  title: Text("Mountain Climber",
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
                  image: AssetImage('assets/pushup and rotation.jpg'),
                  fit: BoxFit.cover,
                )),
                child: ListTile(
                  title: Text("Pushup And Rotation",
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
                  image: AssetImage('assets/jumping squats.jpg'),
                  fit: BoxFit.cover,
                )),
                child: ListTile(
                  title: Text("Jumping squats",
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
                  image: AssetImage('assets/Lunges.jpeg'),
                  fit: BoxFit.cover,
                )),
                child: ListTile(
                  title: Text("Lunges",
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
