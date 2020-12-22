import 'dart:async';
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {

  int initialValue = 33;

  /// [Timer with setState()]
  @override
  void initState() {
    Timer.periodic(
        Duration(seconds: 1),
        (timeParameter) {
            setState(() {
              initialValue--;
            });
        },
    );
    super.initState();
  }

  /// [===== build() =====]
  @override
  Widget build(BuildContext context) {
    /// [Print Check]
    print("comm: Rebuilding repeatedly");

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