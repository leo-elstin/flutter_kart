import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: products
          .map((element) =>
          Card(
            child: Column(
              children: <Widget>[
                Image.network(
                    'https://flutter.io/assets/homepage/news-2-599aefd56e8aa903ded69500ef4102cdd8f988dab8d9e4d570de18bdb702ffd4.png'),
                Text(element)
              ],
            ),
          ))
          .toList(),
    );
  }
}
