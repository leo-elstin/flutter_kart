import 'package:flutter/material.dart';

class ProductCreate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Show Dialog'),
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Are you sure ?'),
                  content: Text('The action is non recoverable.'),
                  actions: <Widget>[
                    FlatButton(
                      child: Text('No'),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    FlatButton(
                      child: Text('Yes, Delete.'),
                      onPressed: () {
                        Navigator.pop(context);
                        // add your action here .
                      },
                    )
                  ],
                );
              });
        },
      ),
    );
  }
}
