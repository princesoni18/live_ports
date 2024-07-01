import 'package:flutter/material.dart';


class TranslateOnHover extends StatefulWidget {
  final Widget child;
  // You can also pass the translation in here if you want to
   TranslateOnHover({super.key, required this.child}) ;

  @override
  _TranslateOnHoverState createState() => _TranslateOnHoverState();
}

class _TranslateOnHoverState extends State<TranslateOnHover> {
  final nonHoverTransform = Matrix4.identity()..translate(0, 0, 0);
  final hoverTransform = Matrix4.identity()..translate(0, -10, 0);

  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: AnimatedScale(
        duration: const Duration(milliseconds: 100),
        child: widget.child,
        scale: _hovering?1.05:1,
      ),
    );
  }

  void _mouseEnter(bool hover) {
    setState(() {
      _hovering = hover;
    });
  }
}