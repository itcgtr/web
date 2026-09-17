import "package:flutter/foundation.dart";

class Variable extends ChangeNotifier {
  static final Variable instance = Variable._();
  Variable._();

  Future<void> init() async {
    //
    notifyListeners();
  }

  void notify() {
    //
    notifyListeners();
  }
}

Variable variable = Variable.instance;
