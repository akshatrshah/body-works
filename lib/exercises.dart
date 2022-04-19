import 'package:flutter/material.dart';

class fitnessPage extends StatefulWidget {
  @override
  State<fitnessPage> createState() => _fitnessPageState();
}

class _fitnessPageState extends State<fitnessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 300,
              pinned: true,
              floating: false,
              title: Text('Exercises'),
              backgroundColor: Colors.black,
              toolbarHeight: 100,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  'img2.jpg',
                  fit: BoxFit.cover,
                  color: Colors.grey[800],
                  colorBlendMode: BlendMode.darken,
                ),
              ),
              bottom: PreferredSize(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 0, horizontal: 24),
                      hintText: 'Search for workout...',
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                preferredSize: Size.fromHeight(100),
              ),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.settings))
              ],
            )
          ];
        },
      ),
    );
  }
}
