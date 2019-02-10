import 'package:flutter/material.dart';

import 'product.dart';
import 'product_controller.dart';

class ProductManager extends StatefulWidget {
  final Map startingProduct;

  ProductManager({this.startingProduct});

  @override
  State<StatefulWidget> createState() {
    return _StateProductManager();
  }
}

class _StateProductManager extends State<ProductManager> {
  List<Map> _products = [];

  @override
  void initState() {
    if (widget.startingProduct != null) {
      _products.add(widget.startingProduct);
    }
    super.initState();
  }

  void _addProduct(Map product) {
    setState(() {
      _products.add(product);
    });
  }

  void _removeProduct(int position) {
    setState(() {
      _products.removeAt(position);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.all(10.0),
            //child: ProductController(_addProduct()), 
            ),
        Expanded(
          //child: Products(),
        )
      ],
    );
  }
}
