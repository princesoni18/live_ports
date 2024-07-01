import 'package:flutter/material.dart';
import 'package:real_time_ports/themes/dark_theme.dart';

class Custombutton extends StatelessWidget {
  final String text;
  const Custombutton({super.key, required this.text});


  @override
  Widget build(BuildContext context) {
    return Container(
     alignment: Alignment.center,
     padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
     decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.amber),
      child: Text(text, style: TextStyle(color: tertiaryColor,fontSize: 20 ),),
    );
  }
}