import 'package:flutter/material.dart';
import 'package:flutter_kart/product/product_create.dart';
import 'package:flutter_kart/product/product_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            drawer: Drawer(
              child: Column(
                children: <Widget>[
                  AppBar(
                    elevation: 2,
                    automaticallyImplyLeading: false,
                    title: Text('Choose'),
                    // centerTitle: true,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(10.0),
                    leading: Icon(Icons.shopping_cart),
                    title: Text('Manage Products'),
                    onTap: () {},
                  )
                ],
              ),
            ),
            appBar: AppBar(
              title: Text('Home'),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(
                    text: 'Products',
                  ),
                  Tab(text: 'My Products')
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[ProductCreate(), ProductList()],
            )));
  }
}
