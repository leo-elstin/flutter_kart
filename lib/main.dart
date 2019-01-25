import 'package:flutter/material.dart';

import 'auth/auth_page.dart';
import 'home/home_page.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(brightness: Brightness.light, primarySwatch: Colors.purple),
      // home: AuthPage(),  this is replaced by routes '/'
      routes: {
        '/': (BuildContext context) => AuthPage(),
        '/home': (BuildContext context) => HomePage()
      },
    );
  }
} 
