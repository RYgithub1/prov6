import 'dart:async';
import 'package:flutter/material.dart';
import 'package:prov6/timer_info_model.dart';
import 'package:provider/provider.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {

  // int initialValue = 33;

  /// [Timer with setState()]
  @override
  void initState() {
    Timer.periodic(
        Duration(seconds: 1),
        (timeParameter) {
            // setState(() {
            //   initialValue--;
            // });

            /// [Recept Provider and Update each seconds]
            var timerInfo = Provider.of<TimerInfoModel>(context, listen: false);
            timerInfo.updateRemainingTime();

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

            // Text(
            //   initialValue ?.toString() ?? '',
            //   style: TextStyle(fontSize: 60),
            // ),

            /// [Consumer]
            Consumer<TimerInfoModel>(
              builder: (context, model, child) {
                return Text(
                  model.getRemainingTime() ?.toString() ?? '',
                  style: TextStyle(fontSize: 60),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
