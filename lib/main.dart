import 'package:flutter/material.dart';
import 'package:flutter_login_alx/Constant/Constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_login_alx/LoginScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Welcome to ALX '),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 50.0),
              ),
              CircleAvatar(
                radius: 100.0,
                backgroundImage: AssetImage('images/alx1.jpg'),
                backgroundColor: Colors.blue,
              ),
              SizedBox(
                height: 50.0,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LogInScreen();
                  }));
                },
                child: Text('PLEASE LOGIN'),
              ),
            ],
          ),
        ));
  }
}
