class Password {
  String password = '';

  bool isValid() {
    if (password.length < 8 || password.length > 16) {
      return false;
    }

    bool hasUppercase = password.contains(new RegExp(r'[A-Z]'));
    bool hasLowercase = password.contains(new RegExp(r'[a-z]'));

    bool hasDigits = password.contains(new RegExp(r'[0-9]'));

    return hasUppercase && hasLowercase && hasDigits;
  }

  @override
  String toString() {
    return 'Your Password is: $password';
  }
}
