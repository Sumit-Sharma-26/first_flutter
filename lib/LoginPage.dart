import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'InputWrapper.dart';

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, colors: [
            Colors.cyan[500],
            Colors.cyan[300],
            Colors.cyan[400]
          ]),
        ),
        child: Column(
          children: <Widget>[
            Header(),
            SizedBox(height: 80,),
            Expanded(child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                )
              ),
              child: InputWrapper(),
            ))
          ],
        ),
      ) ,
    );
  }
}

class Header extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Text("Login", style: TextStyle(color: Colors.white,fontSize: 40),),
          ),
          SizedBox(height: 10,),
          Center(
            child: Text("Welcome to Inside Android",style: TextStyle(color: Colors.white, fontSize: 18),),
          )
        ],
      ),
    );
  }
}

