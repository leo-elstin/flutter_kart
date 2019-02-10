import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import '../scoped-model/products_model.dart';
import '../model/hotel.dart';
import 'package:flutter_kart/pages/hotel_ui.dart';

class HotelListView extends StatelessWidget {
  final bool isVertical;
  HotelListView(this.isVertical);

  Widget _buildHotelItems(
      BuildContext context, int position, Hotel product, ProductsModel model) {
    return _buildHotelCard(context, product, model);
  }

  Widget _buildProductList(List<Hotel> products, ProductsModel model) {
    Widget productCard;
    if (products.length > 0) {
      productCard = Container(
        padding: EdgeInsets.only(left: 8, top: 0),
        height: 250,
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) => _buildHotelItems(
                context,
                index,
                products[index],
                model,
              ),
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
        ),
      );
    } else {
      productCard = Center(child: Text('NO, PRODUCTS FOUND :( '));
    }
    return productCard;
  }

  Widget _buildProductListVertical(List<Hotel> products, ProductsModel model) {
    Widget productCard;
    if (products.length > 0) {
      productCard = Container(
        child: ListView.builder(
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) => _buildHotelItems(
                context,
                index,
                products[index],
                model,
              ),
          // scrollDirection: isVertical? Axis.horizontal : Axis.vertical,
          itemCount: products.length,
        ),
      );
    } else {
      productCard = Center(child: Text('NO, PRODUCTS FOUND :( '));
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    return new ScopedModelDescendant<ProductsModel>(
      builder: (BuildContext context, Widget child, ProductsModel model) {
        return isVertical
            ? _buildProductList(model.getHotelList, model)
            : _buildProductListVertical(model.getHotelList, model);
      },
    );
  }

  Widget _buildHotelCard(
      BuildContext context, Hotel product, ProductsModel model) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext cotext) => HotelPage(product),
          )),
      child: Container(
        height: 250,
        width: MediaQuery.of(context).size.width * .75,
        padding: EdgeInsets.only(left: 8, right: 8),
        child: Card(
          elevation: 1,
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(product.headerImage),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4),
                    topRight: Radius.circular(4),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      product.name,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Lato'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      product.type,
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Lato'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          product.waitingTime.toUpperCase(),
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Lato'),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          product.rating.toString(),
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Lato'),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.star,
                          size: 18,
                        ),
                        Text(
                          ' (${product.ratingCount}+)',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Lato'),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
