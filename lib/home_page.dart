import 'package:body_works/sleep_time.dart';
import 'package:flutter/material.dart';
import 'package:number_inc_dec/number_inc_dec.dart';

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
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('img8.jpeg'), fit: BoxFit.cover, opacity: 0.3)),
      child: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 10),
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(10),
                  child: const Text('BODY WORKS',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25))),
              SizedBox(height: 15),
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.blue)),
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: weightController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Body Weight(in kgs)',
                      contentPadding: EdgeInsets.all(20),
                      isDense: true),
                ),
              ),
              SizedBox(height: 30),
              const Text(
                'Water(in liters):',
                style: TextStyle(fontSize: 23),
              ),
              Center(
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.blue)),
                  child: NumberInputWithIncrementDecrement(
                    controller: TextEditingController(),
                    isInt: true,
                    scaleHeight: 0.8,
                    incDecFactor: 0.5,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.blue)),
                child: Column(
                  children: <Widget>[
                    // ignore: prefer_const_constructors
                    Text('Please select your sleep time:',
                        style: TextStyle(fontSize: 23)),
                    timer()
                  ],
                ),
              ),
              SizedBox(height: 40),
              SizedBox(height: 10),
            ],
          )),
    ));
  }
}
