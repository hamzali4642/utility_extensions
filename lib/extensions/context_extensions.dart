import 'package:flutter/material.dart';

extension ContextUtilities on BuildContext {
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;

  double get topPadding => MediaQuery.of(this).padding.top;
  double get bottomPadding => MediaQuery.of(this).padding.bottom;
  double get leftPadding => MediaQuery.of(this).padding.left;
  double get rightPadding => MediaQuery.of(this).padding.right;

  Future<dynamic> push({required Widget child}) async {
    return await Navigator.of(this)
        .push(MaterialPageRoute(builder: (ctx) => child));
  }

  Future<dynamic> pushReplacement({required Widget child}) async {
    return await Navigator.of(this)
        .pushReplacement(MaterialPageRoute(builder: (ctx) => child));
  }

  Future<dynamic> pushAndRemoveUntil({required Widget child}) async {
    return await Navigator.of(this).pushAndRemoveUntil(
      MaterialPageRoute(builder: (ctx) => child),
          (route) => false,
    );
  }

  bool get canPop => Navigator.of(this).canPop();

  void pop({dynamic data}) {
    Navigator.of(this).pop(data);
  }
}
