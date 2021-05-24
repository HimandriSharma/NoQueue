import 'package:toast/toast.dart';
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
        selectableDayPredicate: (DateTime val) =>val.weekday == 6 || val.weekday == 7? false:true,
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
      body: Container(
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: hei/15,
                ),
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
               ...[
                 Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                      margin: EdgeInsets.all(16),
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.calendar_today,
                            color: Colors.white,
                          ),
                          FlatButton(
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
                        ],
                      ),
                    ),
                 ),
                 SizedBox(
                  height: hei/15,
                ),
                 Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                      width: wid,
                      height: hei/15,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black87,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.today,
                            color: Colors.black87,
                          ),
                          FlatButton(
                            child: Text(
                              'Slot 1 : 10 am - 12pm',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'PTSans',
                              ),
                            ),
                            textColor: Colors.black87,
                            onPressed: () {
                              //toast generation
                            },
                          ),
                        ],
                      ),
                    ),
                 ),
                 Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                      width: wid,
                      height: hei/15,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black87,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.today,
                            color: Colors.black87,
                          ),
                          FlatButton(
                            child: Text(
                              'Slot 1 : 10 am - 12pm',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'PTSans',
                              ),
                            ),
                            textColor: Colors.black87,
                            onPressed: () {
                              alert(context);
                              //toast generation
                            },
                          ),
                        ],
                      ),
                    ),
                 ),
                 Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                      width: wid,
                      height: hei/15,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black87,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.today,
                            color: Colors.black87,
                          ),
                          FlatButton(
                            child: Text(
                              'Slot 1 : 10 am - 12pm',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'PTSans',
                              ),
                            ),
                            textColor: Colors.black87,
                            onPressed: () {
                              //toast generation
                            },
                          ),
                        ],
                      ),
                    ),
                 ),
                 Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                      width: wid,
                      height: hei/15,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black87,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.today,
                            color: Colors.black87,
                          ),
                          FlatButton(
                            child: Text(
                              'Slot 1 : 10 am - 12pm',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'PTSans',
                              ),
                            ),
                            textColor: Colors.black87,
                            onPressed: () {
                              //toast generation
                            },
                          ),
                        ],
                      ),
                    ),
                 ),
                 Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                      width: wid,
                      height: hei/15,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black87,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.today,
                            color: Colors.black87,
                          ),
                          FlatButton(
                            child: Text(
                              'Slot 1 : 10 am - 12pm',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'PTSans',
                              ),
                            ),
                            textColor: Colors.black87,
                            onPressed: () => alert(context)
                          ),
                        ],
                      ),
                    ),
                 ),
               ]
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void alert(BuildContext context){
  Widget cancelButton = FlatButton(
    child: Text("Cancel"),
    onPressed:  () {
      Navigator.of(context).pop();
    },
  );
  Widget continueButton = FlatButton(
    child: Text("Confirm"),
    onPressed:  () {
      Toast.show("Your slot has been confirmed.Make sure you are on time.😉", context, duration: Toast.LENGTH_LONG, gravity:  Toast.CENTER);
      Navigator.of(context).pop();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Confirmation"),
    content: Text("Would you like to confirm your appointment?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) => alert
  );
}