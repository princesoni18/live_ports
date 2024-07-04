import 'package:flutter/material.dart';
import 'package:real_time_ports/themes/dark_theme.dart';

class AddIcon extends StatelessWidget {
  const AddIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
       
        borderRadius: BorderRadius.circular(50),
        color: tertiaryColor,
        border: Border.all(color: primaryColor,width: 1)
      ),

      child: const Icon(Icons.add , size: 20,color: primaryColor,),
    );
  }
}