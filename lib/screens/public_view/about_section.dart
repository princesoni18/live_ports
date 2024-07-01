import 'package:flutter/material.dart';
import 'package:real_time_ports/themes/dark_theme.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          Text("About",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: textColor),),
          const SizedBox(height: 15,),

          Text(
            
            "Reliable, energetic and resourceful customer service professional with over fiveyears of experience resolving customer complaints and promoting conflict resolution. Ability to cultivate key client relationships for multiple campaigns in diverse industries. Expertise in client services, account management, relationship-building and communication.",
            textAlign: TextAlign.start,
            style: TextStyle(color: textColor,fontWeight: FontWeight.w200),
            )
        ],
      ),
    );
  }
}