import 'package:scoped_model/scoped_model.dart';
import 'package:flutter_kart/model/Product.dart';

class ProductsModel extends Model {
  List<Product> _products = [];
  List<Product> get products {
    print(_products.length); 
    return List.from(_products);
  }  

  void addProduct(Product product) {
    _products.add(product);  
    notifyListeners();
  }
}
