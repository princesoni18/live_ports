import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final height;
  final width;
  final color;
  final String text;
  const MyButton({super.key,required this.color, this.height,this.width,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
       height: height,
       width: width,
     padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
       decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(7),
        color: color
       ),

    alignment: Alignment.center,
       child: FittedBox(
        child: Text(text)),

    );
  }
}