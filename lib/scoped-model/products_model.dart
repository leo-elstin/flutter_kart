import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_kart/model/Product.dart';
import 'package:flutter_kart/model/hotel.dart';

class ProductsModel extends Model {
  List<Hotel> _hotelList = [];
  List<Product> _products = [];
  List<Product> _cartList = [];

  ProductsModel() {
    _products.add(Product(
      'Masala Dosai',
      'Yummy and tasty hot dosai stuffed with potattoghfhgfhh',
      13,
      'http://www.bhatkallys.com/wp-content/uploads/2016/12/22796096d9c63708fb5bdddd27fa10fe.jpg',
    ));

    _products.add(Product(
      'Veg Fried Rice',
      'Veg friedn rice with Lime juice combo',
      20,
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

  void addProduct(Product product) {
    _products.add(product);
    notifyListeners();
  }

  void addToCart(Product product) {
    _cartList.add(product);
    notifyListeners();
  }
}
