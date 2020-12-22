import 'package:flutter/material.dart';
import 'package:prov6/home_page.dart';


void main() {runApp(MyApp());}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stooooooop',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: HomePage(),
    );
  }
}
