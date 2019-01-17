import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products);

  Widget _buildProductItems(BuildContext context, int position) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.network(
              'https://flutter.io/assets/homepage/news-2-599aefd56e8aa903ded69500ef4102cdd8f988dab8d9e4d570de18bdb702ffd4.png'),
          Text(products[position])
        ],
      ),
    );
  }

  Widget _buildProductList() {
    Widget productCard;
    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItems,
        itemCount: products.length,
      );
    } else {
      productCard = Center(child: Text('NO, PRODUCTS FOUND :( '));
    }

    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductList()
  }
}
