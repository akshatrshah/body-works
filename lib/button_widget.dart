import 'package:body_works/constants.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;
  final Color color;
  final Color backgroundColor;

  const ButtonWidget(
      {Key key,
      this.text,
      this.onClicked,
      this.color = Colors.black,
      this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          primary: backgroundColor),
      child: Text(
        text,
        style: TextStyle(fontSize: 20),
      ),
      onPressed: onClicked,
    );
  }
}
