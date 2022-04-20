import 'package:flutter/material.dart';

class dinner extends StatefulWidget {
  @override
  State<dinner> createState() => _dinnerState();
}

class _dinnerState extends State<dinner> {
  String currentText = "";
  @override
  Widget build(BuildContext context) {
    String food_item;
    int calorie_count;

    return Scaffold(
        appBar: AppBar(
            title: Center(
          child: Text('Dinner'),
        )),
        body: Column(
          children: [
            Container(
                margin: EdgeInsets.all(30),
                child: Column(children: [
                  Row(
                    children: [
                      Text('Target Calories for dinner:  '),
                      Container(
                        width: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      Text(' Kcal')
                    ],
                  ),
                  Text(currentText),
                ])),
            Text('Please Enter the food item and Calories it contained: '),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Center(
                child: Container(
                  width: 120,
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "Food item "),
                    onChanged: (food_item) {
                      print('$food_item');
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Center(
                child: Container(
                  width: 120,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Calories(Kcal) "),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Submit'))
          ],
        ));
  }
}
