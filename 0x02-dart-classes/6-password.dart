import '0-class.dart';

class Password extends User {
  String _password = "";

  Password({String password = ""}) {
    this._password = password;
  }

  String get password {
    return _password;
  }

  void set password(String _password) {
    this._password = _password;
  }

  bool isValid() {
    if (_password.length >= 8 &&
        _password.length <= 16 &&
        RegExp(r'[A-Z]').hasMatch(_password) &&
        RegExp(r'[a-z]').hasMatch(_password) &&
        RegExp(r'[0-9]').hasMatch(_password))
      return true;
    else
      return false;
  }

  @override
  String toString() {
    return "Your Password is: $_password";
  }
}
