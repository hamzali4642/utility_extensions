import 'package:flutter/material.dart';

extension WidgetUtilities on Widget {
  Widget get toSliver => SliverToBoxAdapter(child: this,);
  Widget removeScrollEffect(){
    return ScrollConfiguration(
      behavior: const MaterialScrollBehavior().copyWith(overscroll: false),
      child : this,
    );
  }
}

extension WidgetUtilitiesNumbers on num{
  Widget get hb => SizedBox(height: double.parse("$num"));
  Widget get wb => SizedBox(width: double.parse("$num"));
}
