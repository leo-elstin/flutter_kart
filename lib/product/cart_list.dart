import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_kart/scoped-model/products_model.dart';
import '../model/Product.dart';

class Cart extends StatelessWidget {
  Widget _buildProductItems(BuildContext context, int position, Product product,
      ProductsModel model) {
    return Dismissible(
      key: Key('value'),
      onDismissed: (DismissDirection direction) {},
      direction: DismissDirection.endToStart,
      background: Container(
        color: Colors.green,
      ),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5),
            alignment: Alignment.centerLeft,
            child: Text(
              'Sri Saravana Bhavan',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
            ),
          ),
          Row(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'http://www.bhatkallys.com/wp-content/uploads/2016/12/22796096d9c63708fb5bdddd27fa10fe.jpg'),
                    ),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                margin: EdgeInsets.all(5),
                height: 100,
                width: 100,
              ),
              Flexible(
                child: Container(
                  height: 110,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        product.title,
                        style: TextStyle(
                            color: Colors.black54,
                            fontFamily: 'Lato',
                            fontSize: 18,
                            fontWeight: FontWeight.normal),
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 13.0),
                        child: Text(
                          product.description,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 13.0,
                            fontFamily: 'Roboto',
                            color: Color(0xFF212121),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
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
      productCard = Center(child: Text('NO, PRODUCTS FOUND :( '));
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
