import 'package:flutter/material.dart';

extension ColorUtilities on Color{
  Color applyOpacity(double opacity){
    assert(opacity >= 0.0 && opacity <= 1.0);
    return withAlpha((opacity * 255).toInt());
  }
}