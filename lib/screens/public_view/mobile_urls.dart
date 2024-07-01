import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_time_ports/themes/dark_theme.dart';
import 'package:real_time_ports/widgets/card_view.dart';
import 'package:real_time_ports/extensions/hover_extensions.dart';



class MobileUrls extends StatelessWidget {
  const MobileUrls({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [


        Expanded(
          child: FittedBox(
            alignment: Alignment.centerLeft,
            fit: BoxFit.scaleDown,
            child:  Text("Live ports ",style:  GoogleFonts.bebasNeue(
                fontSize: 30,
                color: primaryColor
              ),),)
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
               InkWell(
               splashColor: Colors.amberAccent,
                child: iconLink('assets/phone.svg')),
               const SizedBox(width: 15,),

               iconLink('assets/mail.svg'),
               const SizedBox(width: 15,),

               iconLink('assets/linkedIn.svg'),
               const SizedBox(width: 15,),
               iconLink('assets/github.svg'),
              
               
        
        ],)
      ],
    );
  }

  Widget iconLink(
    String icon
  ){


    return CardView(
      child: 
      
          SvgPicture.asset(icon,color: primaryColor,theme: SvgTheme(currentColor: Colors.black),height: 20,),
         
    ).moveUpOnHover.showCursorOnHover;
  }
}