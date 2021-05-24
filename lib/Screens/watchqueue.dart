import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class WatchQueue extends StatefulWidget {
  @override
  _WatchQueueState createState() => _WatchQueueState();
}

class _WatchQueueState extends State<WatchQueue> {
  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    double hei = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: hei/15,),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              child: Text(
                'NoQ',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Raleway',
                  letterSpacing: 1,
                  fontSize: wid/5,
                ), 
              ),
            ),
          ),
          SizedBox(height: hei/10),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: wid,
                height: hei/2.5,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black87,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Himandri Sharma',
                       style: TextStyle(
                        fontSize: wid/10,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'PTSans',
                      ),
                    ),
                    SizedBox(
                      height: hei/105,
                    ),
                    Text(
                      '01651202818',
                       style: TextStyle(
                        fontSize: wid/12,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'PTSans',
                      ),
                    ),
                    SizedBox(
                      height: hei/25,
                    ),
                    Text(
                      'Your position in Queue is:',
                       style: TextStyle(
                        fontSize: wid/15,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'PTSans',
                      ),
                    ),
                    
                    Text(
                      '#1',
                       style: TextStyle(
                        fontSize: wid/7,
                        color: Hexcolor("0057E7"),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'PTSans',
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}