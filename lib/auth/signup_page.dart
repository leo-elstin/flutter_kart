import 'package:flutter/material.dart';
import 'package:flutter_kart/utils/utils.dart';

class SignUpPage extends StatelessWidget {
  final Function changePage;
  SignUpPage(this.changePage);

  @override
  Widget build(BuildContext context) {
    return _buildLoginWidget(context: context);
  }

  Column _buildLoginWidget({context: BuildContext}) {
    return Column(
      children: <Widget>[
        TextField(
          style: TextStyle(color: Colors.white),
          keyboardType: TextInputType.text,
          decoration: textDecoration('Name'),
          onChanged: (String value) {
            // setState(() {});
          },
        ),
        _space(),
        TextField(
          style: TextStyle(color: Colors.white),
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.emailAddress,
          decoration: textDecoration('Email Address'),
          onChanged: (String value) {
            // setState(() {});
          },
        ),
        _space(),
        TextField(
          style: TextStyle(color: Colors.white),
          keyboardType: TextInputType.phone,
          decoration: textDecoration('Phone Number',),
          onChanged: (String value) {
            // setState(() {});
          },
        ),
        _space(),
        TextField(
          style: TextStyle(color: Colors.white),
          keyboardType: TextInputType.emailAddress,
          decoration: textDecoration('Password'),
          onChanged: (String value) {
            // setState(() {});
          },
        ),
        SizedBox(
          height: 25,
        ),
        FlatButton(
          shape: new RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              side: BorderSide(color: Colors.white)),
          padding: EdgeInsets.only(
            left: 50,
            right: 50,
          ),
          // color: Theme.of(context).buttonColor,
          textColor: Colors.white,
          child: Text('Sign Up'),
          onPressed: () {
           // Navigator.pushNamed(context, '/home');
          },
        ),
        Container(
          margin: EdgeInsets.only(
            top: 10,
            bottom: 10,
          ),
          child: Text(
            'Or',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        FlatButton(
          child: Text(
            'Already have an account? Login ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          onPressed: () {
            changePage(true);
          },
        ),
      ],
    );
  }

  Widget _space() {
    return SizedBox(
      height: 10,
    );
  }
}
