import 'package:flutter/material.dart';
import 'home/product_details.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProduct;

  Products(this.products, {this.deleteProduct});

  Widget _buildProductItems(BuildContext context, int position) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.network(
              'http://www.bhatkallys.com/wp-content/uploads/2016/12/22796096d9c63708fb5bdddd27fa10fe.jpg'),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(products[position]['title'],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(
                width: 10,
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                decoration: BoxDecoration(
                    color: Colors.green,
                    // border: BoxBorder(),
                    borderRadius: BorderRadius.circular(10)),
                child: Text(
                  '\$ ${products[position]['price'].toString()}',
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          DecoratedBox(
            child: Container(
              padding: EdgeInsets.all(5),
              child: Text('Kazhakottam, TVM, KL, 695581')),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.black87)),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text(
                  'Details',
                ),
                onPressed: () => Navigator.push<bool>(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext cotext) => ProductDetails(
                            products[position]['description'], ''),
                      ),
                    ).then((bool value) {
                      if (value) {
                        deleteProduct(position);
                      } else {}
                      print(value);
                    }),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProductList() {
    Widget productCard;
    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItems,
        itemCount: products.length,
      );
    } else {
      productCard = Center(child: Text('NO, PRODUCTS FOUND :( '));
    }

    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductList();
  }
}
