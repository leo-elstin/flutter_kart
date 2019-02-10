import 'package:flutter/material.dart';
import 'package:flutter_kart/model/Product.dart';

class CartCard extends StatelessWidget {
  final Product product;
  CartCard(this.product);
  @override
  Widget build(BuildContext context) {
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
            padding: EdgeInsets.only(left: 16, top: 8, bottom: 5),
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
                      image: NetworkImage(product.image),
                    ),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                margin: EdgeInsets.only(left: 16, top: 5, right: 5, bottom: 5),
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
                    ],
                  ),
                ),
              ),
            ],
          ),
          Divider()
        ],
      ),
    );
  }
}
