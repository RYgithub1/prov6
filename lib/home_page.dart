import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {

  int initialValue = 33;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("STOP WATCH"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipOval(
              child: Image.asset(
                "assets/images/stopWatch.png",
                width: 240,
                height: 240,
              ),
            ),
            SizedBox(height: 12),
            Text(
              initialValue?.toString() ?? '',
              style: TextStyle(fontSize: 60),
            ),
          ],
        ),
      ),
    );
  }
}