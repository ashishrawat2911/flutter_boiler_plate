mixin ValidatorMixin {
  String validateMobile(String value) {
    var pattern = r'(^[0-9]*$)';
    var regExp = new RegExp(pattern);
    if (value.isEmpty) {
      return "Phone number is Required";
    } else if (value.length != 10) {
      return "Phone number must be 10 digits";
    } else if (!regExp.hasMatch(value)) {
      return "Phone number must be digits";
    }
    return null;
  }

  String validate6DigitCode(String value) {
    var pattern = r'(^[0-9]*$)';
    var regExp = new RegExp(pattern);
    if (value.isEmpty) {
      return "Passcode is Required";
    } else if (value.length != 6) {
      return "PassCode must be 6 digits";
    } else if (!regExp.hasMatch(value)) {
      return "PassCode must be digits";
    }
    return null;
  }

  String validateEmail(String value) {
    var pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    var regExp = new RegExp(pattern);
    if (value.isEmpty) {
      return "Email is Required";
    } else if (!regExp.hasMatch(value)) {
      return "Invalid Email";
    } else {
      return null;
    }
  }
}
