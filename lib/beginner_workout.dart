import 'package:body_works/constants.dart';
import 'package:body_works/timer.dart';
import 'package:flutter/material.dart';

class beginnerWorkout extends StatefulWidget {
  @override
  State<beginnerWorkout> createState() => _beginnerWorkoutState();
}

class _beginnerWorkoutState extends State<beginnerWorkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Center(child: Text('Beginners')),
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
                      'The last three or four reps is what makes the muscle grow. This area of pain divides a champion from someone who is not a champion.',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Text(
                    '~Arnold Schwarzenegger',
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
                  image: AssetImage('assets/situps.jpg'),
                  fit: BoxFit.cover,
                )),
                child: ListTile(
                  title: Text("Sit-Ups",
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
