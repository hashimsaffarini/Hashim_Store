String? validatePassword(String value) {
  String pattern = r'^(?=.*[0-9]).{6,}$';
  RegExp regExp = RegExp(pattern);
  if (regExp.hasMatch(value)) {
    return null;
  } else {
    return 'Password must be at least 6 characters long and include at least one number';
  }
}

String? validateEmail(String value) {
  String pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,}$';
  RegExp regExp = RegExp(pattern);
  if (regExp.hasMatch(value)) {
    return null;
  } else {
    return 'Please enter a valid email';
  }
}
