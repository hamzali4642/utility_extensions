extension Format on num{
  String removeTrailingZero() {
    if (this == toInt()) {
      return toInt().toString();
    } else {
      return toString();
    }
  }
}