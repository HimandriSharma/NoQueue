import 'dart:convert';
import 'package:flutter/material.dart';


class FormData {
  String email;
  String password;

  FormData({
    this.email,
    this.password,
  });
}

class SignIn extends StatefulWidget {

  @override
  _SignIn createState() => _SignIn();
}

class _SignIn extends State<SignIn> {
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
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              height: hei/12.2,
                              width: wid,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  filled: true,
                                  hintText: 'Your email address',
                                  labelText: 'Email',
                                  border: new OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(20.0),
                                    ),
                                  ),
                                ),
                                onChanged: (value) {
                                  formData.email = value;
                                },
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
                            'Next',
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