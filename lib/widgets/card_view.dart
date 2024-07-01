import 'package:flutter/material.dart';
import 'package:real_time_ports/themes/dark_theme.dart';

class CardView extends StatelessWidget {
  final Widget child;
  const CardView({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
       padding: const EdgeInsets.all(10),
      decoration:  BoxDecoration(

        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
       
      ),


      child: child,
    );
  }
}