import 'package:flutter/material.dart';

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
          decoration: InputDecoration(
              hasFloatingPlaceholder: true,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              // hintText: 'Enter your product description',
              labelStyle: TextStyle(color: Colors.white),
              labelText: 'Name'),
          onChanged: (String value) {
            // setState(() {});
          },
        ),
        _space(),
        TextField(
          style: TextStyle(color: Colors.white),
          textInputAction: TextInputAction.done,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              hasFloatingPlaceholder: true,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              // hintText: 'Enter your product title',
              labelStyle: TextStyle(color: Colors.white),
              labelText: 'Email Address'),
          onChanged: (String value) {
            // setState(() {});
          },
        ),
        _space(),
        TextField(
          style: TextStyle(color: Colors.white),
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
              hasFloatingPlaceholder: true,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              // hintText: 'Enter your product description',
              labelStyle: TextStyle(color: Colors.white),
              labelText: 'Phone Number'),
          onChanged: (String value) {
            // setState(() {});
          },
        ),
        _space(),
        TextField(
          style: TextStyle(color: Colors.white),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              hasFloatingPlaceholder: true,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              // hintText: 'Enter your product description',
              labelStyle: TextStyle(color: Colors.white),
              labelText: 'Password'),
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
