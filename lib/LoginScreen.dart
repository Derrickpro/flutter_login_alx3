import 'package:flutter_login_alx/Constant/Constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_login_alx/SignUpScreen.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
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
      body: ListView(
        shrinkWrap: true,
        reverse: false,
        children: <Widget>[
          SizedBox(
            height: 20.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20.0, bottom: 10.0),
                    child: new Text("LOG IN",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                        textAlign: TextAlign.left),
                  )
                ],
              ),
              CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage('images/alx1.jpg'),
                backgroundColor: Colors.blue,
              ),
              SizedBox(
                height: 30.0,
              ),
              Center(
                child: Center(
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 30.0, right: 30.0),
                        child: Form(
                          autovalidate: false,
                          child: new Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Padding(
                                padding:
                                    EdgeInsets.only(left: 10.0, right: 10.0),
                                child: new TextFormField(
                                  autofocus: false,
                                  decoration: new InputDecoration(
                                    labelText: "User Name*",
                                    prefixIcon: Padding(
                                        padding: EdgeInsets.only(right: 7.0),
                                        child: new Image.asset(
                                          "images/user_icon.png",
                                          height: 25.0,
                                          width: 25.0,
                                          fit: BoxFit.scaleDown,
                                        )),
                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                ),
                              ),
                              new Padding(
                                  padding: EdgeInsets.only(
                                      left: 10.0, right: 10.0, top: 5.0),
                                  child: new TextFormField(
                                    obscureText: true,
                                    autofocus: false,
                                    decoration: new InputDecoration(
                                        labelText: "Password*",
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
                                    left: 0.0, top: 45.0, bottom: 20.0),
                                child: new RaisedButton(
                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(30.0)),
                                  child: new Text(
                                    "Login",
                                    style: new TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  color: Colors.blue,
                                  textColor: Colors.white,
                                  elevation: 5.0,
                                  padding: EdgeInsets.only(
                                      left: 80.0,
                                      right: 80.0,
                                      top: 15.0,
                                      bottom: 15.0),
                                ),
                              ),
                              new Column(
                                children: <Widget>[
                                  new FlatButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return SignUpScreen();
                                      }));
                                    },
                                    child: new Padding(
                                        padding: EdgeInsets.only(top: 20.0),
                                        child: new Text(
                                          "Don't Have An Account",
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                              fontSize: 15.0),
                                        )),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
