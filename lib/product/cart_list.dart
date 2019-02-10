import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_kart/scoped-model/products_model.dart';
import '../model/Product.dart';
import '../product/cart_card.dart';

class Cart extends StatelessWidget {
  Widget _buildProductItems(BuildContext context, int position, Product product,
      ProductsModel model) {
    return CartCard(product);
  }

  Widget _buildProductList(List<Product> products, ProductsModel model) {
    Widget productCard;
    if (products.length > 0) {
      productCard = SafeArea(
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) => _buildProductItems(
                context,
                index,
                products[index],
                model,
              ),
          itemCount: products.length,
        ),
      );
      // productCard = Center(child: Text(products.length.toString()));
    } else {
      productCard = Center(child: Text('YOUR CART IS EMPTY  :( '));
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    return new ScopedModelDescendant<ProductsModel>(
      builder: (BuildContext context, Widget child, ProductsModel model) {
        return _buildProductList(model.getCartList, model);
      },
    );
  }
}
