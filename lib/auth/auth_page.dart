import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthpageState();
  }
}

class _AuthpageState extends State<AuthPage> {
  bool _acceptTerms = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 4, // default value
        title: Text('Authenticate'),
      ),
      body: Container(
        margin: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  // hintText: 'Enter your product title',
                  labelText: 'Email Address'),
              onChanged: (String value) {
                setState(() {});
              },
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(

                  // hintText: 'Enter your product description',
                  labelText: 'Password'),
              onChanged: (String value) {
                setState(() {});
              },
            ),
            SwitchListTile(
              title: Text('I accept the Terms & Conditions'),
              value: _acceptTerms,
              onChanged: (bool value) {
                setState(() {
                  _acceptTerms = value;
                });
              },
            ),
            SizedBox(
              height: 25,
            ),
            RaisedButton(
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
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
      ),
    );
  }
}
