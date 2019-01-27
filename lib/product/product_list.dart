import 'package:flutter/material.dart';
import 'package:flutter_kart/product.dart';

class ProductList extends StatelessWidget {
  final List<Map<String, String>> list;

  ProductList(this.list);

  @override
  Widget build(BuildContext context) {
    return Products(list);
  }
}
