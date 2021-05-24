import 'package:avoidQueue/main.dart';
import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class CollegeName{
  int id;
  String time;
  CollegeName(this.id,this.time);
  static List<CollegeName> getTiming(){
    return <CollegeName>[
      CollegeName(1,'College Name'),
      CollegeName(2,'BVCOE,New Delhi'),
    ];
  }
}


class _SignUpState extends State<SignUp> {
  List<CollegeName> _timeslot = CollegeName.getTiming();
  List<DropdownMenuItem<CollegeName>> _dropDownMenuItems;
  CollegeName _selectedSlot;
  @override
  void initState(){
    _dropDownMenuItems = buildDropdownMenuItems(_timeslot);
    _selectedSlot = _dropDownMenuItems[0].value;
    super.initState();
  }
  List<DropdownMenuItem<CollegeName>> buildDropdownMenuItems(List slots){
    List<DropdownMenuItem<CollegeName>> items = List();
    for(CollegeName slot in slots){
      items.add(DropdownMenuItem(
        value:slot,
        child: Text(slot.time),
        )
      );
    }
    return items;
  }
  onChangedDropDownItem(CollegeName selectedSlot){
    setState(() {
      _selectedSlot = selectedSlot;
    });
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double wid = MediaQuery.of(context).size.width;
    double hei = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
          child: Scrollbar(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16),
              child: AutofillGroup(
                child: Column(
                  children: [
                    Text(
                      'NoQ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Raleway',
                        letterSpacing: 1,
                        fontSize: wid/5,
                      ),               
                    ),
                    ...[
                      Padding(
                        padding: const EdgeInsets.only(top:100,bottom: 5.0),
                        child: Container(
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Jane',
                              labelText: 'First Name',
                              border: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(20.0),
                                ),
                              ),
                            ),
                            autofillHints: [AutofillHints.givenName],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:5.0,bottom: 5.0),
                        child: Container(
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Doe',
                              labelText: 'Last Name',
                              border: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(20.0),
                                ),
                              ),
                            ),
                            autofillHints: [AutofillHints.familyName],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:5.0,bottom: 5.0),
                        child: Container(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'foo@example.com',
                              labelText: 'Email',
                              border: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(20.0),
                                ),
                              ),
                            ),
                            autofillHints: [AutofillHints.email],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:5.0,bottom: 5.0),
                        child: Container(
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Roll Number',
                              border: new OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(20.0),
                                ),
                              ),
                            ),
                            autofillHints: <String>[AutofillHints.telephoneNumber],
                          ),
                        ),
                      ), 
                      Padding(
                        padding: const EdgeInsets.only(top:5.0,bottom: 5.0),
                        child: Container(
                          width: wid,
                          padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
                          decoration: new BoxDecoration(
                            borderRadius:BorderRadius.all(Radius.circular(20.0)),
                            border: new Border.all(color: Colors.black38)
                          ),
                          child: Column(
                            children: <Widget>[
                              DropdownButton(
                                value: _selectedSlot,
                                items: _dropDownMenuItems,
                                onChanged: onChangedDropDownItem,
                              ),
                            ],
                          ),
                        ),
                      ), 
                      Padding(
                        padding: const EdgeInsets.only(top:5.0,bottom: 5.0),
                        child: Container(
                          height: hei/12.2,
                          width: wid,
                          child: PasswordField(
                            hasFloatingPlaceholder: true,
                            pattern: r'[0-9]{4}',                        
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(width: 1.3, color: Colors.black26)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(width: 1.3, color: Colors.black26)),
                            errorMessage: 'Should only contain 4 digit number.Hold icon to see Pass Code.',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:5.0),
                        child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17.0),
                              side: BorderSide(color : Colors.black),
                            ),
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal
                              ),
                              ),
                            onPressed: () async {
                              // Use a JSON encoded string to send
                            },
                          ),
                      ),

                    ].expand(
                      (widget) => [
                        widget,
                        SizedBox(
                          height: hei/50,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}