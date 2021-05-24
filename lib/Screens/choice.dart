import 'package:flutter/material.dart';

class Choice extends StatefulWidget {
  @override
  _ChoiceState createState() => _ChoiceState();
}

class _ChoiceState extends State<Choice> {
  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child:Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              height: hei/1.5,
              child: Text(
                'NoQ',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Raleway',
                  letterSpacing: 1,
                  fontSize: 100,
                ), 
              ),
            ),
            Container(
              margin: EdgeInsets.all(16),
              width: wid,
              height: hei/12,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                border: Border.all(
                  color: Colors.blueAccent,
                  width: 8,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: FlatButton(
                child: Text(
                  'Book a slot',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'PTSans',
                  ),
                ),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              width: wid,
              height: hei/12,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                border: Border.all(
                  color: Colors.blueAccent,
                  width: 8,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: FlatButton(
                child: Text(
                  'Watch Queue',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'PTSans',
                  ),
                ),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {},
              ),
            ),
          ]
        ),
      ),
    );
  }
}