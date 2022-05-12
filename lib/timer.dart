import 'dart:async';
import 'dart:core';

import 'package:flutter/material.dart';

import 'button_widget.dart';

class workout_timer extends StatefulWidget {
  @override
  State<workout_timer> createState() => _workout_timerState();
}

class _workout_timerState extends State<workout_timer> {
  static const maxSeconds = 60;
  int seconds = maxSeconds;
  Timer timer;

  void stopTimer({bool reset = true}) {
    if (reset) {
      resetTimer();
    }
    setState(() => timer?.cancel());
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (_) {
      if (seconds > 0) {
        setState(() => seconds--);
      } else {
        stopTimer();
      }
    });
  }

  void resetTimer() => setState(() => seconds = maxSeconds);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Lets Time Yourself')),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildTimer(),
          SizedBox(height: 50),
          buildbutton(),
        ],
      )),
    );
  }

  Widget buildTimer() => SizedBox(
        width: 200,
        height: 200,
        child: Stack(
          fit: StackFit.expand,
          children: [
            CircularProgressIndicator(value: seconds / maxSeconds),
            Center(
              child: buildTime(),
            )
          ],
        ),
      );

  Widget buildbutton() {
    final isRunning = timer == null ? false : timer.isActive;
    final isComplete = seconds == maxSeconds || seconds == 0;

    return isRunning
        ? Center(
            child: Column(
              children: [
                ButtonWidget(
                  text: 'Pause',
                  onClicked: () {
                    stopTimer(reset: false);
                  },
                ),
                SizedBox(height: 50),
                ButtonWidget(
                  text: 'Cancel',
                  onClicked: () {
                    stopTimer();
                  },
                ),
              ],
            ),
          )
        : ButtonWidget(
            text: 'Start/Resume',
            onClicked: () {
              startTimer();
            },
          );
  }

  Widget buildTime() {
    return Text(
      '$seconds',
      style: TextStyle(fontSize: 80),
    );
  }
}
