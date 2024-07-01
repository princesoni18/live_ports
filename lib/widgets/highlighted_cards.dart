

import 'package:flutter/material.dart';
import 'package:real_time_ports/themes/dark_theme.dart';

class HighlightedCards extends StatelessWidget {
  final Widget child;
  final bool isMobile;
  const HighlightedCards({super.key, required this.child, required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isMobile?50:100,
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(20),
        color: primaryColor
      ),
      alignment: Alignment.center,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: child),
    );
  }
}