import 'package:flutter/material.dart';
import 'package:prov6/home_page.dart';
import 'package:prov6/timer_info_model.dart';
import 'package:provider/provider.dart';


void main() {runApp(MyApp());}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stooooooop',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: ChangeNotifierProvider<TimerInfoModel>(
        create: (context) => TimerInfoModel(),
        child: HomePage(),
      ),
    );
  }
}
