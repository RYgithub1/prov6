import 'package:flutter/foundation.dart';



class TimerInfoModel extends ChangeNotifier {

  /// int _remainingtime;  /// [Need initial value]
  int _remainingtime = 33;
  int getRemainingTime() => _remainingtime;

  updateRemainingTime() {
    // _remainingtime--;
    // notifyListeners();

    /// [Need end]
    if(_remainingtime == -3) {
    } else {
      _remainingtime--;
      notifyListeners();
    }
  }


}