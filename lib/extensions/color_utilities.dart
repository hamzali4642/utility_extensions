import 'package:flutter/material.dart';

extension ColorUtilities on Color{
  Color applyOpacity(double opacity){
    return withAlpha((opacity * 255).toInt());
  }
}