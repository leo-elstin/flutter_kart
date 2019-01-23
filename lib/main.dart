import 'package:flutter/material.dart';
import 'product_manager.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light, primarySwatch: Colors.red),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Home'),
          ),
          body: ProductManager()),
    );
  }
}
