import 'package:flutter_login_alx/Constant/Constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'ALX',
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
            ),
          ),
        ),
        resizeToAvoidBottomPadding: true,
        body: new ListView(
          shrinkWrap: true,
          reverse: false,
          children: <Widget>[
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: new Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                left: 0.0, bottom: 0.0, top: 0.0),
                            child: new Text("SIGN UP",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15.0,
                                ),
                                textAlign: TextAlign.left),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('images/alx1.jpg'),
                  backgroundColor: Colors.blue,
                ),
                new SizedBox(
                  height: 30.0,
                ),
                new Center(
                    child: new Center(
                  child: new Stack(
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(left: 30.0, right: 30.0),
                          child: new Form(
                            autovalidate: false,
                            child: new Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Padding(
                                  padding:
                                      EdgeInsets.only(left: 10.0, right: 10.0),
                                  child: new TextFormField(
                                    decoration: new InputDecoration(
                                        labelText: "Full Name*",
                                        filled: false,
                                        prefixIcon: Padding(
                                            padding:
                                                EdgeInsets.only(right: 7.0),
                                            child: new Image.asset(
                                              "images/user_icon.png",
                                              height: 25.0,
                                              width: 25.0,
                                              fit: BoxFit.scaleDown,
                                            ))),
                                    keyboardType: TextInputType.emailAddress,
                                  ),
                                ),
                                new Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.0, right: 10.0, top: 5.0),
                                    child: new TextFormField(
                                      obscureText: false,
                                      decoration: new InputDecoration(
                                          labelText: "Email-Id",
                                          enabled: true,
                                          filled: false,
                                          prefixIcon: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 7.0),
                                              child: new Image.asset(
                                                "images/email_icon.png",
                                                height: 25.0,
                                                width: 25.0,
                                                fit: BoxFit.scaleDown,
                                              ))),
                                      keyboardType: TextInputType.text,
                                    )),
                                new Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.0, right: 10.0, top: 5.0),
                                    child: new TextFormField(
                                      obscureText: true,
                                      decoration: new InputDecoration(
                                          labelText: "Password*",
                                          enabled: true,
                                          filled: false,
                                          prefixIcon: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 7.0),
                                              child: new Image.asset(
                                                "images/password_icon.png",
                                                height: 25.0,
                                                width: 25.0,
                                                fit: BoxFit.scaleDown,
                                              ))),
                                      keyboardType: TextInputType.text,
                                    )),
                                new Padding(
                                    padding: EdgeInsets.only(
                                        left: 10.0, right: 10.0, top: 5.0),
                                    child: new TextFormField(
                                      obscureText: true,
                                      decoration: new InputDecoration(
                                          labelText: "Confirm Password*",
                                          enabled: true,
                                          filled: false,
                                          prefixIcon: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 7.0),
                                              child: new Image.asset(
                                                "images/password_icon.png",
                                                height: 25.0,
                                                width: 25.0,
                                                fit: BoxFit.scaleDown,
                                              ))),
                                      keyboardType: TextInputType.text,
                                    )),
                                new Padding(
                                  padding: EdgeInsets.only(
                                      left: 0.0, top: 45.0, bottom: 20.0),
                                  child: new RaisedButton(
                                    shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(30.0)),
                                    child: new Text(
                                      "SignUp ",
                                      style: new TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    color: Color(0xFF54C5F8),
                                    textColor: Colors.white,
                                    elevation: 5.0,
                                    padding: EdgeInsets.only(
                                        left: 80.0,
                                        right: 80.0,
                                        top: 15.0,
                                        bottom: 15.0),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                ))
              ],
            )
          ],
        ));
  }
}
