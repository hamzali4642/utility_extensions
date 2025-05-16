
extension StringUtilities on String {

  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  bool get isValidURl => RegExp(      r"(https?://|http://|www.)([-A-Z0-9.]+)(/[-A-Z0-9+&@#/%=~_|!:,.;]*)?(\?[A-Z0-9+&@#/%=~_|!:‌​,.;]*)?",

      caseSensitive: false)
      .hasMatch(this);

  bool get isValidEmail => RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9.-]+\.[a-zA-Z]+")
      .hasMatch(this);

  bool get isValidPassword => RegExp(
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$')
      .hasMatch(this);
  bool get isValidPassword2 => RegExp(
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$%^&*(),.?":{}|<>~\[\]]).{8,}$')
      .hasMatch(this);

  bool get hasSpecialCharacters => contains(RegExp(r'[!@#$%^&*(),.?":{}|<>~\[\]]'));

  bool get hasNumber => contains(RegExp('[0-9]'));
  bool get hasLowerCase => contains(RegExp("(?:[^a-z]*[a-z]){1}"));
  bool get hasUpperCase => contains(RegExp("(?:[^A-Z]*[A-Z]){1}"));


  bool get isValidPhone =>
     RegExp(
     r'^\+?\d{1,4}?[-.\s]?\(?\d{1,5}?\)?[-.\s]?\d{1,5}[-.\s]?\d{1,9}([-.\s]?\d{1,9})?$'
  ).hasMatch(this);

  List<String> toList(){
    var data = replaceAll("[", "").replaceAll("]", "").trim();
    return data.split(",");
  }

}