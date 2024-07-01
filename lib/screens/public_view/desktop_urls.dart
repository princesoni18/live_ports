import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:real_time_ports/themes/dark_theme.dart';
import 'package:real_time_ports/widgets/card_view.dart';
import 'package:real_time_ports/extensions/hover_extensions.dart';



class DesktopUrls extends StatelessWidget {
  const DesktopUrls({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [


        Expanded(
          child: FittedBox(
            alignment: Alignment.centerLeft,
            fit: BoxFit.scaleDown,
            child:  Text("Live ports ",style :GoogleFonts.bebasNeue(
                fontSize: 30,
                color: primaryColor
              ),)),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
               InkWell(
               splashColor: Colors.amberAccent,
                child: rowWithIcon('assets/phone.svg', "Contact")),
               const SizedBox(width: 15,),

               rowWithIcon('assets/mail.svg', "Email"),
               const SizedBox(width: 15,),

               rowWithIcon('assets/linkedIn.svg', "Linked In"),
               const SizedBox(width: 15,),
               rowWithIcon('assets/github.svg', "Github"),
              
               
        
        ],)
      ],
    );
  }

  Widget rowWithIcon(
    String icon, String name
  ){


    return CardView(
      child: Row(
      
        children: [
      
          SvgPicture.asset(icon,color: primaryColor,theme: SvgTheme(currentColor: Colors.black),height: 20,),
          const SizedBox(width: 5,),
          Text(name,style: const TextStyle(color: textColor),)
      
        ],
      ),
    ).moveUpOnHover.showCursorOnHover;
  }
}