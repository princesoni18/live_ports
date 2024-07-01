

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_time_ports/themes/dark_theme.dart';

class RatingCard extends StatelessWidget {
  final String rating;
  final String link;
  final String name;
  const RatingCard({super.key,required this.name,required this.rating,required this.link});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 160,
      
      
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
      
          Row(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
      
              Text(rating,style: const TextStyle(color: textColor,fontSize: 25),),
              Icon(Icons.arrow_outward_rounded,color: primaryColor,)
            ],
          ),
      
           Row(
          
            children:[ 
            SvgPicture.asset(link,height: 20,color: Colors.amber,),
            Text(name,style: const TextStyle(color: textColor,fontSize: 22),)])
        ],
      ),
    );
  }
}