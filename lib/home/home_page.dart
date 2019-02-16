import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_kart/scoped-model/products_model.dart';
import 'package:flutter_kart/hotel/hotel_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ProductsModel>(
      builder: (
        BuildContext context,
        Widget child,
        ProductsModel model,
      ) {
        return Scaffold(
          appBar: _buildAppBar(model, context),
          body: HotelList(),
           drawer: Drawer(
                child: Column(
                  children: <Widget>[
                    AppBar(
                      elevation: 1,
                      automaticallyImplyLeading: false,
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.all(10.0),
                      leading: Icon(Icons.shopping_cart),
                      title: Text('Manage Products'),
                      onTap: () {
                         Navigator.pop(context);
                        Navigator.pushNamed(context, '/admin');
                      },
                    )
                  ],
                ),
              ),
        );
      },
    );
  }

  Widget _buildAppBar(ProductsModel model, BuildContext  context) {
    return AppBar(
      title: Text('Home'),
      actions: <Widget>[
        Stack(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.pushNamed(context, '/cart');
              },
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
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            )
          ],
        )
      ],
    );
  }
}
