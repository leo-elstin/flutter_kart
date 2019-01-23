import 'package:flutter/material.dart';

import 'product.dart';
import 'product_controller.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager({this.startingProduct});

  @override
  State<StatefulWidget> createState() {
    return _StateProductManager();
  }
}

class _StateProductManager extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    if (widget.startingProduct != null) {
      _products.add(widget.startingProduct);
    }
    super.initState();
  }

  void _addProduct(String product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.all(10.0),
            child: ProductController(_addProduct)),
        Expanded(
          child: Products(_products),
        )
      ],
    );
  }
}
