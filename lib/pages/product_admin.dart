import 'package:flutter/material.dart';
import 'package:flutter_kart/product/product_create.dart';
import 'package:flutter_kart/product/product_list.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_kart/scoped-model/products_model.dart';

class ProductAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ProductsModel>(
      builder: (BuildContext context, Widget child, ProductsModel model) {
        return DefaultTabController(
            length: 2,
            child: Scaffold(
              body: TabBarView(
                children: <Widget>[ProductCreate(), ProductList()],
              ),
              appBar: AppBar(
                title: Text('Home'),
                actions: <Widget>[
                  Stack(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.shopping_cart),
                        onPressed: () {},
                      ),
                      Container(
                        height: 35,
                        width: 60,
                        padding: EdgeInsets.only(right: 10),
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 20,
                          height: 20,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(2),
                          child: Text(model.getCartList.length.toString()),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      )
                    ],
                  )
                ],
                bottom: TabBar(tabs: <Widget>[
                  Tab(
                    text: 'Create Product',
                  ),
                  Tab(
                    text: 'Product List',
                  ),
                ]),
              ),
            ));
      },
    );
  }
}
