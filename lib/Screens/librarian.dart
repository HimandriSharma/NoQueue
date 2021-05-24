import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Librarian extends StatefulWidget {
  @override
  _LibrarianState createState() => _LibrarianState();
}

class _LibrarianState extends State<Librarian> {
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
          SizedBox(height: hei/15),
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
                  Text(
                    '01651202818',
                     style: TextStyle(
                      fontSize: wid/12,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'PTSans',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton.extended(
                onPressed: (){},
                label: Text('Approve'),
                icon: Icon(Icons.thumb_up),
                backgroundColor: Hexcolor("#4284F4"),
              ),
              FloatingActionButton.extended(
                onPressed: (){},
                label: Text('Absent'),
                icon: Icon(Icons.thumb_down),
                backgroundColor: Hexcolor("#EC4235"),
              )
            ],
          ),
        ],
      ),
    );
  }
}