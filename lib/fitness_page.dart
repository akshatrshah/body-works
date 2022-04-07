import 'package:flutter/material.dart';
import 'exercises.dart';

class fitnessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[100],
        title: Center(child: Text('Hi User, whats on your mind?')),
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [buildAppBar(context), ExercisesWidget()],
      ),
    );
  }

  SliverAppBar buildAppBar(BuildContext context) => SliverAppBar(
        flexibleSpace: FlexibleSpaceBar(
          background: const Padding(
              padding: EdgeInsets.all(25),
              child: Image(image: AssetImage('img7.jpeg'))),
        ),
        backgroundColor: Colors.green[100],
        expandedHeight: MediaQuery.of(context).size.height * 0.5,
        stretch: true,
      );
}
