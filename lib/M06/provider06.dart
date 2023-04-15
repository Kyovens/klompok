import 'package:flutter/widgets.dart';

class Provider06 extends ChangeNotifier {
  bool _muncul = false;

  get statusmuncul => _muncul;

  set statusmuncul(val) {
    _muncul = val;
    notifyListeners();
  }
}
