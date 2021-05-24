import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Slot extends StatefulWidget {
  @override
  _SlotState createState() => _SlotState();
}

class _SlotState extends State<Slot> {
  DateTime _currentdate;

  Future<Null> _selectdate(BuildContext context) async{
      final DateTime _seldate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime(2021),
        builder: (context,child) {
          return SingleChildScrollView(child: child,);
        }
      );
      if(_seldate!=null) {
        setState(() {
          _currentdate = _seldate;
        });
      }
  }
  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    double hei = MediaQuery.of(context).size.height;
    String _formattedate;
    if(_currentdate==null){
      _formattedate = "Select a date HERE!";
    }
    else{
      _formattedate = new DateFormat.yMMMd().format(_currentdate);
    }
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'NoQ',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Raleway',
                  letterSpacing: 1,
                  fontSize: 50,
                ), 
              ),
            ),
           Padding(
             padding: const EdgeInsets.only(top:500),
             child: Container(
                margin: EdgeInsets.all(20),
                width: wid,
                height: hei/15,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  border: Border.all(
                    color: Colors.blueAccent,
                    width: 8,
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: FlatButton(
                  child: Text(
                    '$_formattedate',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'PTSans',
                    ),
                  ),
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    _selectdate(context);
                  },
                ),
              ),
           ),
          ],
        ),
      ),
    );
  }
}