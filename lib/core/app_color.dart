import "dart:ui";

import "package:flutter/foundation.dart";

class AppColors extends ChangeNotifier {
  static final AppColors instance = AppColors._();
  AppColors._();

  var bg = Color(0xFFFDFDFF);
  var bgAlt = Color(0xFFF7F8FC);
  var textMuted = Color(0xFF7A85A0);
  var text = Color(0xFF14213D);
  var textMid = Color(0xFF4A5270);
  var gold = Color(0xFFC49A3C);
  var goldDark = Color(0xFFA67B26);
  var white = Color(0xFFFFFFFF);
  var card = Color(0xFFFBF5E6);
  var border = Color(0xFFE2E8F0);
  var watermark = Color(0xFFD6E0EC);

  Future<void> init() async {
    //
    notifyListeners();
  }

  void notify() {
    //
    notifyListeners();
  }
}

AppColors app_color = AppColors.instance;
