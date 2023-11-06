class Password {
  String _password;
  Password({String password = ''}) : _password = password;
  bool isValid() {
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }

    bool hasUppercase = _password.contains(new RegExp(r'[A-Z]'));
    bool hasLowercase = _password.contains(new RegExp(r'[a-z]'));
    bool hasDigit =  _password.contains(new RegExp(r'[0-9]'));
    return hasUppercase && hasLowercase && hasDigit;
  }
  @override
  String toString() {
    return 'Your Password is: $_password';
  }
}
