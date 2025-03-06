import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

extension WidgetUtilities on Widget {
  Widget get toSliver => SliverToBoxAdapter(child: this,);
  Widget removeScrollEffect(){
    return ScrollConfiguration(
      behavior: const MaterialScrollBehavior().copyWith(overscroll: false),
      child : this,
    );
  }


  Widget wrapWithPadding(EdgeInsets padding){
    return Padding(
      padding: padding,
      child : this,
    );
  }


  Widget printSize(){
    return SizeNotifier(
      child : this,
    );
  }
}

extension WidgetUtilitiesNumbers on num{
  Widget get vBox => SizedBox(height: toDouble(),);
  Widget get hBox => SizedBox(width: toDouble());
}





typedef void OnWidgetSizeChange(Size size);

class MeasureSizeRenderObject extends RenderProxyBox {
  Size? oldSize;
  final OnWidgetSizeChange? onChange;

  MeasureSizeRenderObject({this.onChange});

  @override
  void performLayout() {
    super.performLayout();

    Size newSize = child!.size;
    if (oldSize == newSize) return;

    oldSize = newSize;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (onChange != null) {
        onChange!(newSize);
      }  else{
        print("height: ${newSize.height}");
        print("width: ${newSize.width}");
      }

    });
  }
}

class SizeNotifier extends SingleChildRenderObjectWidget {
  final OnWidgetSizeChange? onChange;

  const SizeNotifier({
    super.key,
    this.onChange,
    required Widget super.child,
  });

  @override
  RenderObject createRenderObject(BuildContext context) {
    return MeasureSizeRenderObject(onChange: onChange);
  }
}