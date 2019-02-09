import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'scoped-model/products_model.dart';
import 'auth/auth_page.dart';
import 'home/home_page.dart';
import 'pages/product_admin.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: ProductsModel(),
      child: MaterialApp(
        theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.blue,
            accentColor: Colors.amberAccent,
            buttonColor: Colors.blue),
        // home: AuthPage(),  this is replaced by routes '/'
        routes: {
          '/': (BuildContext context) => AuthPage(),
          '/home': (BuildContext context) => HomePage(),
          '/admin': (BuildContext context) => ProductAdmin()
        },
      ),
    );
  }
}
