import 'package:flutter/material.dart';
import 'package:flutter_kart/model/hotel.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_kart/scoped-model/products_model.dart';
import 'package:flutter_kart/model/Product.dart';

class HotelPage extends StatelessWidget {
  final Hotel hotel;
  HotelPage(this.hotel);

  @override
  Widget build(BuildContext context) {
    return new ScopedModelDescendant<ProductsModel>(
      builder: (BuildContext context, Widget child, ProductsModel model) {
        return Scaffold(
          appBar: AppBar(
            title: Text(hotel.name),
          ),
          body: ListView.builder(
            itemBuilder: (BuildContext context, int index) =>
                _buildProductList(model.products[index], context, model),
            itemCount: model.products.length,
          ),
        );
      },
    );
  }

  Widget _buildProductList(
      Product product, BuildContext context, ProductsModel model) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 16, top: 8, bottom: 5),
          alignment: Alignment.centerLeft,
          child: Text(
            hotel.name,
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
                      product.image,
                    ),
                  ),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              margin: EdgeInsets.only(left: 16, top: 5, right: 5, bottom: 5),
              height: 100,
              width: 100,
            ),
            Flexible(
              child: Container(
                // height: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Text(
                        product.title,
                        style: TextStyle(
                            color: Colors.black54,
                            fontFamily: 'Lato',
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        product.description,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 13.0,
                          fontFamily: 'Roboto',
                          color: Color(0xFF212121),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      width: MediaQuery.of(context).size.width,
                      child: FlatButton(
                        child: Text(
                          'ADD',
                          style: TextStyle(color: Colors.green),
                        ),
                        onPressed: () => model.addToCart(product),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Divider()
      ],
    );
  }
}
