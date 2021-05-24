import 'dart:convert';
import 'package:passwordfield/passwordfield.dart';
import 'package:flutter/material.dart';


class FormData {
  String email;
  String password;

  FormData({
    this.email,
    this.password,
  });
}

class Pin extends StatefulWidget {

  @override
  _Pin createState() => _Pin();
}

class _Pin extends State<Pin> {
  FormData formData = FormData();

  @override
  Widget build(BuildContext context) {
    double hei = MediaQuery.of(context).size.height;
    double wid = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Form(
          child: Scrollbar(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(top:105,left:10,right:10),
              child: Column(
                children: [
                   Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Text(
                      'NoQ',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Raleway',
                        letterSpacing: 1,
                        fontSize: wid/3,
                                ),
                    ),
                  ),
                  ...[
                    Padding(
                      padding: const EdgeInsets.only(top:40.0),
                      child: Column(
                        children: [
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
                            errorMessage: 'Hold icon to see Pass Code.',
                          ),
                        ),
                      ),
                          Text(
                            '',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17.0),
                            side: BorderSide(color : Colors.black),
                          ),
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal
                            ),
                            ),
                          onPressed: () async {
                            // Use a JSON encoded string to send

                          },
                        ),
                        FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17.0),
                            side: BorderSide(color : Colors.black),
                          ),
                          child: Text(
                            'Forget Pin?',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.normal
                            ),
                            ),
                          onPressed: () async {
                            // Use a JSON encoded string to send

                          },
                        ),
                      ],
                    ),
                  ].expand(
                    (widget) => [
                      widget,
                      SizedBox(
                        height: 0,
                      )
                    ],
                  ),
                Padding(
                  padding: const EdgeInsets.only(top: 120,bottom: 0),
                  child: Text(
                    'Made with ❤️ by 𝗗𝗦𝗖 𝗕𝗩𝗣',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0,
                      fontSize: 20,
                              ),
                  ),
                ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}