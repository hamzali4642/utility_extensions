import 'package:flutter/material.dart';

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



class SizeNotifier extends StatefulWidget {
  final Widget child;
  final Function(Size)? size;
  const SizeNotifier({
    super.key,
    required this.child,
    this.size,
  });

  @override
  State<SizeNotifier> createState() => _SizeNotifierState();
}

class _SizeNotifierState extends State<SizeNotifier> {
  final GlobalKey _key = GlobalKey();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _notifySize());
  }

  void _notifySize() {
    final context = _key.currentContext;
    if (context != null) {
      final RenderBox box = context.findRenderObject() as RenderBox;
      final size = box.size;
      if(widget.size != null){
        widget.size!(size);
      }else{
        print("height: ${size.height}");
        print("width: ${size.width}");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      key: _key,
      child: widget.child,
    );
  }
}

