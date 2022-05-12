import 'package:body_works/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:body_works/widgets/myColors.dart';
import 'package:body_works/body.dart';
import 'package:body_works/widgets/header.dart';

TextEditingController emailController = TextEditingController();
TextEditingController usernameController = TextEditingController();
TextEditingController ageController = TextEditingController();
TextEditingController weightController = TextEditingController();

class home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _State();
}

class _State extends State<home> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Body Works',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Add a container and provide a linear gradient.
    //basically use different shades of same color.
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [MyColors.white1, MyColors.white2])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[Header(), Body()],
          ),
        ),
      ),
    );
  }
}
