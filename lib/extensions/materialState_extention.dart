import 'package:flutter/material.dart';

extension ToMaterialStateProperty<T> on T {
  MaterialStateProperty<T?> toMaterialStateProperty() {
    return MaterialStateProperty.resolveWith((_) => this);
  }
}

extension ToWidgetStateProperty<T> on T {
  WidgetStateProperty<T?> toWidgetStateProperty() {
    return WidgetStateProperty.resolveWith((_) => this);
  }
}
