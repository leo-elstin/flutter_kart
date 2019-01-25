import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 4,  // default value
        title: Text('Authenticate'),
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.baseline,
        children: <Widget>[
          RaisedButton(
            child: Text('Login'),
            onPressed: () {
              // Navigator.pushReplacement(   // replcet the curent layout unlike push that just creates new page
              //     context,
              //     MaterialPageRoute(
              //         builder: (BuildContext cotext) => HomePage()));

            // Using Routes

            Navigator.pushNamed(context, '/home');
            },
          )
        ],
      ),
    );
  }
}
