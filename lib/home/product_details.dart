import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final String title;
  final String imageUrl;

  ProductDetails(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.network('https://flutter.io/assets/homepage/news-2-599aefd56e8aa903ded69500ef4102cdd8f988dab8d9e4d570de18bdb702ffd4.png'),
          Text('Comming soon'),
          RaisedButton(
            child: Text('Go Back'),
            onPressed: () => Navigator.pop(context),
          )
        ],
      ),
    );
  }
}
