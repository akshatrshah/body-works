import 'dart:developer';

import 'package:flutter/material.dart';

class timer extends StatefulWidget {
  @override
  State<timer> createState() => _timerState();
}

class _timerState extends State<timer> {
  TimeOfDay time, time2;
  TimeOfDay picked;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    time = TimeOfDay.now();
  }

  Future<Null> selectTime(BuildContext context) async {
    picked = await showTimePicker(context: context, initialTime: time);

    if (picked != null) {
      setState(() {
        time = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        IconButton(
          onPressed: () {
            selectTime(context);
            print(time);
          },
          icon: Icon(Icons.alarm),
          iconSize: 40,
        ),
        Text(
          'Time ${time.hour}:${time.minute}',
          style: TextStyle(fontSize: 23),
        ),
        SizedBox(
          height: 30,
        ),
        Text(
          'You wake up time is:',
          style: TextStyle(fontSize: 23),
        ),
        Text('Time ${time.hour + 8}:${time.minute}',
            style: TextStyle(fontSize: 23)),
      ]),
    );
  }
}
