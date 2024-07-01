import 'package:flutter/material.dart';
import 'package:real_time_ports/themes/dark_theme.dart';

class CustomtextField extends StatelessWidget {
  final String hinttext;
  final Widget? suffix;
  final bool obscureText;
  final TextEditingController controller;


  const CustomtextField({super.key, required this.hinttext, required this.controller,  this.suffix, this.obscureText=false});

  @override
  Widget build(BuildContext context) {
    return TextField(
        
     style: const TextStyle(color: textColor),
     controller: controller,
   obscureText: obscureText,
    
    decoration: InputDecoration(
     
      suffixIcon: suffix,
      hintText: hinttext,
      


      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: textColor,width: 1)),
      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: textColor,width: 1)),
      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: const BorderSide(color: primaryColor,width: 1))
    ),
    );
  }
}