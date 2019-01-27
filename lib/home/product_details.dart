import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final String title;
  final String imageUrl;

  ProductDetails(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, true);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Image.network(
            //     'http://www.bhatkallys.com/wp-content/uploads/2016/12/22796096d9c63708fb5bdddd27fa10fe.jpg'),
            Text('Comming soon'),
            Container(
              padding: EdgeInsets.all(15.0),
              child: RaisedButton(
                textColor: Colors.white,
                color: Theme.of(context).primaryColor,
                child: Text('Go Back'),
                onPressed: () => Navigator.pop(context, true),
              ),
            )
          ],
        ),
      ),
    );
  }
}
