import 'package:flutter/material.dart';
import 'model/Product.dart';
import 'scoped-model/products_model.dart';
import 'package:scoped_model/scoped_model.dart';

class ProductController extends StatelessWidget {
  final Product product;

  ProductController(this.product);

  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ProductsModel>(
      builder: (BuildContext context, Widget child, ProductsModel model) {
        return RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            FocusScope.of(context).requestFocus(new FocusNode());
            model.addProduct(product);
          },
          child: Text(
            'Add Item',
            style: TextStyle(color: Colors.white),
          ),
        );
      },
    );
  }
}
