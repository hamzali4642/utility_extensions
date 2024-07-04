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
  Widget get vBox => SizedBox(height: toDouble(),);
  Widget get hBox => SizedBox(width: toDouble());
}
