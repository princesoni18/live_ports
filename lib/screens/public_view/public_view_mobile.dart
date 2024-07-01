import 'package:flutter/material.dart';
import 'package:real_time_ports/screens/public_view/about_section.dart';
import 'package:real_time_ports/screens/public_view/headers.dart';
import 'package:real_time_ports/screens/public_view/mobile_urls.dart';

import 'package:real_time_ports/screens/public_view/projects/project_widet.dart';
import 'package:real_time_ports/screens/public_view/skills_grid_view.dart';
import 'package:real_time_ports/themes/dark_theme.dart';
import 'package:real_time_ports/widgets/centered_view.dart';

class PublicViewMobile extends StatelessWidget {
  const PublicViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: CenteredView(

        
        child: Container(
          padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: bgcolor,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: primaryColor,width: 0.2)
        ),
          
            child:  Column(
            
            
              children: [

                MobileUrls(),

                const SizedBox(height: 20,),
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    children: 
                    [
                      Headers(),
                  AboutSection(),
                  const SizedBox(height: 20,),
                  const SkillGridView(crossAxisSize: 100,mainAxisSize: 110,),
                              
                  const ProjectSection(isMobile: true,)
                  
                    ],
                  ),
                ),
                
            
            
              ],
            ),
          ),
        ),
      
    );
  }
}