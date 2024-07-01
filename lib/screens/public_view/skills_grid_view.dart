import 'package:flutter/material.dart';

import 'package:real_time_ports/extensions/hover_extensions.dart';
import 'package:real_time_ports/themes/dark_theme.dart';


class SkillGridView extends StatelessWidget {

  final double crossAxisSize;
  final double mainAxisSize;
  const SkillGridView({super.key,required this.crossAxisSize,required this.mainAxisSize});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 8,
              gridDelegate: 
              
               SliverGridDelegateWithMaxCrossAxisExtent(
                
                crossAxisSpacing: 15,
                mainAxisSpacing: 20,
                maxCrossAxisExtent:crossAxisSize,mainAxisExtent: mainAxisSize), itemBuilder: (context, index) {
              
              return  Container(
                
                
                  width: 100,
                
                  child:  Column(
                     crossAxisAlignment: CrossAxisAlignment.center,
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                
                      FlutterLogo(size: crossAxisSize/2-20,),
                      const SizedBox(height: 20,),
                
                       
                          const Text("Flutter",style: TextStyle(color: textColor,fontSize: 10),),
                       
                    ],
                  
              )).changeColorHover;
            },);
  }
}