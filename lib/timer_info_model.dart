import 'package:flutter/foundation.dart';



class TimerInfoModel extends ChangeNotifier {

  int _remainingtime;
  int getRemainingTime() => _remainingtime;

  updateRemainingTime() {
    _remainingtime--;
    notifyListeners();
  }

}