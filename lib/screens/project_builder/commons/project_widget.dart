import 'package:flutter/material.dart';
import 'package:real_time_ports/extensions/hover_extensions.dart';
import 'package:real_time_ports/screens/project_builder/commons/skill_widget.dart';
import 'package:real_time_ports/screens/project_builder/project_builder_dekstop.dart';
import 'package:real_time_ports/themes/dark_theme.dart';
import 'package:real_time_ports/widgets/add_icon.dart';
import 'package:real_time_ports/widgets/edit_icon.dart';

class ProjectWidget extends StatelessWidget {


  const ProjectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
    
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
      decoration:BoxDecoration(
            
               
               border: Border.all(color: primaryColor,width: 0.5)
               
             ),


      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text("Projects",style: sectionStyle,),
              const SizedBox(width: 10,),GestureDetector(
          onTap: () => showMyDialog(context),
    
           child: const  AddIcon(),
         ).showCursorOnHover,
         const SizedBox(width: 10,),
         GestureDetector(child: const EditIcon(),)

            
            ],
          ),
           const SizedBox(height: 15,),

          Wrap(

           spacing: 10,
           runSpacing: 20,
            children: [
              
              projectCard(),
              projectCard(),
              projectCard(),
              projectCard(),
              projectCard(),
            ],
          )


        ],
      ),       
    );
  }


  projectCard(){

    return Container(

      height: 250,
      width: 250,
      decoration: BoxDecoration(

        gradient: const LinearGradient(colors: [secondaryColor, tertiaryColor],end: Alignment.bottomCenter, begin: Alignment.center),
        borderRadius: BorderRadius.circular(10)
      ),

      child: Column(

        children: [
          Container(

            height: 150,
            
            decoration: BoxDecoration(
               borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),

              image: DecorationImage(image: NetworkImage("assets/timepass.jpg",),fit: BoxFit.cover)
            ),

          ),

          Text("Fashion Tales",style: TextStyle(color: Colors.white, fontSize: 20),)
        ],
      ),
    ).showCursorOnHover;
  }
}