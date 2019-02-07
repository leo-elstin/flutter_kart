import 'package:flutter/material.dart';
import 'package:flutter_kart/utils/utils.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthpageState();
  }
}

class _AuthpageState extends State<AuthPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email;
  String _passwaord;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   elevation: 4, // default value
      //   title: Text('Authenticate'),
      // ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: NetworkImage(
              'https://coloredbrain.com/wp-content/uploads/2016/07/login-background.jpg',
            ),
            fit: BoxFit.cover,
            // colorFilter: ColorFilter.mode(
            // Colors.black.withOpacity(0.5), BlendMode.dstATop),
          ),
        ),
        padding: EdgeInsets.all(25),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 150,
                  width: 150,
                  child: Image.network(
                      'https://i0.wp.com/codecollege.co.za/wp-content/uploads/2016/12/kisspng-dart-programming-language-flutter-object-oriented-flutter-logo-5b454ed3d65b91.767530171531268819878.png?fit=550%2C424&ssl=1'),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 50),
                  child: Text(
                    'Flutter Kart',
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: TextFormField(
                          textInputAction: TextInputAction.none,
                          keyboardType: TextInputType.emailAddress,
                          decoration: textDecoration(
                            'Email Address',
                          ),
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
                        keyboardType: TextInputType.emailAddress,
                        decoration: textDecoration(
                          'Password',
                        ),
                        onSaved: (String value) {
                          setState(
                            () {
                              _passwaord = value;
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            side: BorderSide(color: Colors.white)),
                        padding: EdgeInsets.only(left: 50, right: 50),
                        // color: Theme.of(context).buttonColor,
                        textColor: Colors.white,
                        child: Text('Login'),
                        onPressed: () {
                          // Navigator.pushReplacement(   // replcet the curent layout unlike push that just creates new page
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (BuildContext cotext) => HomePage()));

                          // Using Routes

                          // Navigator.pushNamed(context, '/home');
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
