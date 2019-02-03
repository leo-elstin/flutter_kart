import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return _buildLoginWidget(context: context);
  }

 Column _buildLoginWidget({context : BuildContext}) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10),
          child: TextField(
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
        ),
        SizedBox(
          height: 25,
        ),
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
        GestureDetector(
          onTap: () {},
          child: Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(top: 25, right: 5),
            child: Text(
              'Forgot Password ?',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),

        // SwitchListTile(
        //   title: Text('I accept the Terms & Conditions'),
        //   value: _acceptTerms,
        //   onChanged: (bool value) {
        //     setState(() {
        //       _acceptTerms = value;
        //     });
        //   },
        // ),
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
          child: Text('Login'),
          onPressed: () {
            // Navigator.pushReplacement(   // replcet the curent layout unlike push that just creates new page
            //     context,
            //     MaterialPageRoute(
            //         builder: (BuildContext cotext) => HomePage()));

            // Using Routes

            Navigator.pushNamed(context, '/home');
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
            'Create an account, Sign Up',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}