import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_kart/model/Product.dart';
import 'package:flutter_kart/model/hotel.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

class ProductsModel extends Model {
  List<Hotel> _hotelList = [];
  List<Product> _products = [];
  List<Product> _cartList = [];
  final baseUrl = 'http://api.flutterapp.in/api/';

  ProductsModel() {
    _products.add(Product(
      'Beef Chilli',
      'Freshly cooked yummy beef chilli dry',
      120,
      'https://assets.epicurious.com/photos/578d20a00103fcdb27360fe8/master/pass/beef-and-bean-chili.jpg',
    ));

    _products.add(Product(
      'Masala Dosai',
      'Yummy and tasty hot dosai stuffed with potattoghfhgfhh',
      50,
      'http://www.bhatkallys.com/wp-content/uploads/2016/12/22796096d9c63708fb5bdddd27fa10fe.jpg',
    ));

    _products.add(Product(
      'Veg Fried Rice',
      'Veg friedn rice with Lime juice combo',
      100,
      'https://www.dinneratthezoo.com/wp-content/uploads/2016/10/veggie-fried-rice-6-500x500.jpg',
    ));

    _products.add(Product(
      'Beef Chilli',
      'Freshly cooked yummy beef chilli dry',
      120,
      'https://assets.epicurious.com/photos/578d20a00103fcdb27360fe8/master/pass/beef-and-bean-chili.jpg',
    ));

    _products.add(Product(
      'Masala Dosai',
      'Yummy and tasty hot dosai stuffed with potattoghfhgfhh',
      50,
      'http://www.bhatkallys.com/wp-content/uploads/2016/12/22796096d9c63708fb5bdddd27fa10fe.jpg',
    ));

    _products.add(Product(
      'Veg Fried Rice',
      'Veg friedn rice with Lime juice combo',
      100,
      'https://www.dinneratthezoo.com/wp-content/uploads/2016/10/veggie-fried-rice-6-500x500.jpg',
    ));

    _hotelList.add(Hotel(
        'Le Arabia',
        'https://res.cloudinary.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_508,h_320,c_fill/frn9fykz5imcrbtipzzi',
        'North Indian',
        '20-30 Mins',
        4.2,
        500));

    _hotelList.add(Hotel(
        'Halais Dum Briyani',
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjuNtWLmPFX1CPjh2-4NbJm13abZys0Y3jCtt6AjIaJB3TrdAecw',
        'Indian, North Indian',
        '30-40 Mins',
        4.3,
        500));

    _hotelList.add(Hotel(
        'Al-Saj',
        'https://media-cdn.tripadvisor.com/media/photo-s/08/82/ac/ff/saj-alreef-gullan-street.jpg',
        'South Indian, North Indian',
        '25-30 Mins',
        4.0,
        500));

  }

  List<Product> get products {
    return List.from(_products);
  }

  List<Product> get getCartList {
    return List.from(_cartList);
  }

  List<Hotel> get getHotelList {
    return List.from(_hotelList);
  }

  double get getCartPrice {
    double price = 0;
    getCartList.forEach((Product pro) {
      price += pro.price;
    });
    return price;
  }

  void addProduct(Product product) {
    final Map<String, dynamic> productMap = {
      'title': product.title,
      'description': product.description,
      'price': product.price,
      'image':
          'https://www.dinneratthezoo.com/wp-content/uploads/2016/10/veggie-fried-rice-6-500x500.jpg',
    };

    http.post(
      baseUrl + 'products',
      body: json.encode(productMap),
      headers: {
        'Content-Type': 'application/json',
      },
    ).then(
      (response) {
        print("Response status: ${response.statusCode}");
        print("Response body: ${response.body}");
      },
    );
    _products.add(product);
    notifyListeners();
  }

 getProductList() async {
  final data = await  http
        .get(
      baseUrl + 'products',
    )
        .then(
      (response) {
       
      },
    );
    
  }

  void addToCart(Product product) {
    _cartList.add(product);
    notifyListeners();
  }
}
