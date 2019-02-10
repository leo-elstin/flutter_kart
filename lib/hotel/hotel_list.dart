import 'package:flutter/material.dart';
import 'package:flutter_kart/hotel/hotel_card.dart';

class HotelList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _buildPage();
  }

  Widget _buildPage() {
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(16),
          child: Text(
            'Your favourites',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              fontFamily: 'Lato',
            ),
          ),
        ),
        HotelListView(true),
        Divider(),
        Container(
          padding: EdgeInsets.all(16),
          child: Text(
            'More Resturants',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'Lato',
            ),
          ),
        ),
        HotelListView(false),
        Divider(),
      ],
    );
  }
}
