import 'package:flutter/material.dart';

class horizontallist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 150,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, i) => Container(
                    height: 150,
                    width: 150,
                    margin: EdgeInsets.all(10),
                    child: Center(
                      child: Text('data'),
                    ),
                    color: Colors.green[700],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
