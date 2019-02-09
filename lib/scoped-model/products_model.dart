import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_kart/model/Product.dart';

class ProductsModel extends Model {
  List<Product> _products = [];
  List<Product> _cartList = [];

  List<Product> get products {
    return List.from(_products);
  } 

  List<Product> get getCartList {
    return List.from(_cartList);
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
