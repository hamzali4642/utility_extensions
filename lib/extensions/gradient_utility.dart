import 'package:flutter/material.dart';
import 'package:utility_extensions/utility_extensions.dart';

extension Gradient on LinearGradient {
  LinearGradient invert(){
    return LinearGradient(
      colors: colors.reversed.toList(),
      begin: begin,
      end: end,
    );
  }

  LinearGradient changeDirection({Alignment begin =  Alignment.centerLeft, Alignment end =  Alignment.centerRight}){
    return LinearGradient(
      colors: colors,
      begin: begin,
      end: end,
    );
  }


  LinearGradient applyOpacity(double opacity){
    var colors = this.colors.map((e) => e.applyOpacity(opacity)).toList();
    return LinearGradient(
      colors: colors,
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
    );
  }

}