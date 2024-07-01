import 'package:flutter/material.dart';
import 'package:real_time_ports/themes/dark_theme.dart';

class ChangeColorHover extends StatefulWidget {
  final Widget child;
  // You can also pass the translation in here if you want to
  ChangeColorHover({super.key, required this.child}) ;

  @override
  _ChangeColorHoverState createState() => _ChangeColorHoverState();
}

class _ChangeColorHoverState extends State<ChangeColorHover> {
 
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: AnimatedContainer(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(

       color: _hovering?primaryColor:secondaryColor,
        borderRadius: BorderRadius.circular(10),
       
      ),
        duration: const Duration(milliseconds: 100),
        child: widget.child,
        
      ),
    );
  }

  void _mouseEnter(bool hover) {
    setState(() {
      _hovering = hover;
    });
  }
}