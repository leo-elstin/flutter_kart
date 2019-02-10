import 'package:flutter/material.dart';
import 'home/product_details.dart';
import 'package:scoped_model/scoped_model.dart';
import 'scoped-model/products_model.dart';
import 'model/Product.dart';

class ProductListView extends StatelessWidget {
  Widget _buildProductItems(BuildContext context, int position, Product product,
      ProductsModel model) {
    return _buildProductCard(context, product, model);
  }

  Widget _buildProductList(List<Product> products, ProductsModel model) {
    Widget productCard;
    if (products.length > 0) {
      productCard = Container(
        padding: EdgeInsets.only(left: 16),
        height: 250,
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) => _buildProductItems(
                context,
                index,
                products[index],
                model,
              ),
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
        ),
      );
      // productCard = Center(child: Text(products.length.toString()));
    } else {
      productCard = Center(child: Text('NO, PRODUCTS FOUND :( '));
    }
    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    return new ScopedModelDescendant<ProductsModel>(
      builder: (BuildContext context, Widget child, ProductsModel model) {
        return _buildProductList(model.products, model);
      },
    );
  }

  Widget _buildProductCard(
      BuildContext context, Product product, ProductsModel model) {
    return Container(
      height: 250,
      width: 250,
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(product.image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(5),
                    topRight: Radius.circular(5),
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(product.title,
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
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
                    '\$ ${product.price.toString()}',
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
            // DecoratedBox(
            //   child: Container(
            //       padding: EdgeInsets.all(5),
            //       child: Text('Kazhakottam, TVM, KL, 695581')),
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(5),
            //       border: Border.all(color: Colors.black87)),
            // ),
            // ButtonBar(
            //   alignment: MainAxisAlignment.center,
            //   children: <Widget>[
            //     FlatButton(
            //       child: Text(
            //         'Details',
            //       ),
            //       onPressed: () => Navigator.push<bool>(
            //             context,
            //             MaterialPageRoute(
            //               builder: (BuildContext cotext) =>
            //                   ProductDetails(product.description, ''),
            //             ),
            //           ).then((bool value) {
            //             if (value) {
            //               // deleteProduct(position);
            //             } else {}
            //           }),
            //     ),
            //     FlatButton(
            //       child: Text(
            //         'Add to Cart',
            //       ),
            //       onPressed: () => model.addToCart(product),
            //     )
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
