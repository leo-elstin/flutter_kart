import 'package:flutter/material.dart';

class ProductController extends StatelessWidget {

  final  Function addProduct;
  final  Map<String, String> _productData;

  ProductController(this.addProduct, this._productData);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Theme.of(context).primaryColor,
      onPressed: () {
        addProduct(
          _productData
        );
      },
      child: Text('Add Item', style:
      TextStyle(
          color: Colors.white
      ),),
    );
  }
}
