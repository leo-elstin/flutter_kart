import 'package:flutter/material.dart';
import 'home/product_details.dart';

class Products extends StatelessWidget {
  final List<Map> products;
  final Function deleteProduct;

  Products(this.products, {this.deleteProduct});

  Widget _buildProductItems(BuildContext context, int position) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.network(
              'http://www.bhatkallys.com/wp-content/uploads/2016/12/22796096d9c63708fb5bdddd27fa10fe.jpg'),
          Text(products[position]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () => Navigator.push<bool>(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext cotext) =>
                            ProductDetails(products[position]['title'], ''),
                      ),
                    ).then((bool value) {
                      if (value) {
                        deleteProduct(position);
                      } else {}
                      print(value);
                    }),
              )
            ],
          )
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
    return _buildProductList();
  }
}
