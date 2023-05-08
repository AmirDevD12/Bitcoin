import 'package:flutter/material.dart';

class PasswordFieldModel extends ChangeNotifier {
  bool _isObscure = true;

  bool get isObscure => _isObscure;

  void toggleObscure() {
    _isObscure = !_isObscure;
    notifyListeners();
  }
}


class MyIcon{
  static final  pnhan = Icon(
    Icons.visibility_off,
        size: 25,
    color: Colors.black,
  );
  static final  bas = Icon(
    Icons.visibility,
        size: 25,
    color: Colors.red,
  );
}