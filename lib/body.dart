import 'package:body_works/widgets/body_weight.dart';
import 'package:body_works/widgets/water.dart';
import 'package:flutter/material.dart';
import 'package:body_works/widgets/strings.dart';
import 'package:body_works/widgets/myColors.dart';
import 'package:body_works/widgets/emailBox.dart';
import 'package:body_works/widgets/responsive.dart';

var backgroundImage = 'assets/img7.jpeg';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: LargeScreen(),
      smallScreen: SmallScreen(),
    );
  }
}

class LargeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[addBackground(), addWelcomeText()],
      ),
    );
  }

  //Adds background Image
  Widget addBackground() {
    return FractionallySizedBox(
        alignment: Alignment.centerRight, //to keep images aligned to right
        widthFactor: .6, //covers about 60% of the screen width
        child: Container(
          child: Image(image: AssetImage('assets/img7.jpeg')),
        ));
  }

  //Adds welcome text
  Widget addWelcomeText() {
    return FractionallySizedBox(
      alignment: Alignment.centerLeft, //text aligned to left side
      widthFactor: .6, //covers about half of the screen
      child: Padding(
        padding: EdgeInsets.only(left: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              Strings.hello,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 60,
                color: MyColors.blue4,
              ),
            ),
            RichText(
              text: TextSpan(
                  text: Strings.welcomeTo,
                  style: TextStyle(fontSize: 60, color: MyColors.blue4),
                  children: [
                    TextSpan(
                        text: Strings.ftf,
                        style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54))
                  ]),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.0, top: 20),
              child: Text(Strings.subscribeText),
            ),
            SizedBox(
              height: 40,
            ), //Give some spacing
            EmailBox()
          ],
        ),
      ),
    );
  }
}

class SmallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              Strings.hello,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: MyColors.blue4,
              ),
            ),
            RichText(
              text: TextSpan(
                  text: Strings.welcomeTo,
                  style: TextStyle(fontSize: 40, color: MyColors.blue4),
                  children: [
                    TextSpan(
                        text: Strings.ftf,
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54))
                  ]),
            ),
            SizedBox(
              height: 30,
            ),
            Center(child: Image(image: AssetImage('assets/img7.jpeg'))),
            Padding(
              padding: EdgeInsets.only(left: 12.0, top: 20),
              child: Text(
                "Let's get updated",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            EmailBox(),
            SizedBox(
              height: 30,
            ),
            weight(),
            SizedBox(
              height: 30,
            ),
            water(),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
