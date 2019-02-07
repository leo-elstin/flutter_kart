import 'package:flutter/material.dart';
import 'package:flutter_kart/utils/utils.dart';

class LoginPage extends StatefulWidget {
  final Function changePage;

  LoginPage(this.changePage);

  @override
  State<StatefulWidget> createState() {
    return _LoginState(changePage);
  }
}

class _LoginState extends State<LoginPage> {
  final Function _changePage;
 final  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  _LoginState(this._changePage);

  @override
  Widget build(BuildContext context) {
    
    return _buildLoginWidget(_formKey,context: context);
  }

  Form _buildLoginWidget(GlobalKey formkey, {context: BuildContext}) {
   
    String _email;
    String _password;

    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: TextFormField(
              style: TextStyle(color: Colors.white),
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.emailAddress,
              decoration: textDecoration('Email Address'),
              onSaved: (String value) {
                setState(
                  () {
                    _email = value;
                  },
                );
              },
            ),
          ),
          SizedBox(
            height: 25,
          ),
          TextFormField(
            style: TextStyle(color: Colors.white),
            keyboardType: TextInputType.emailAddress,
            decoration: textDecoration('Password'),
            onSaved: (String value) {
              setState(
                () {
                  _password = value;
                },
              );
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

              _formKey.currentState.save();
              if (_email == null) {
                return;
              } else {
                Navigator.pushReplacementNamed(context, '/home');
              }
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
            onPressed: () {
              _changePage(false);
            },
          ),
        ],
      ),
    );
  }
}
