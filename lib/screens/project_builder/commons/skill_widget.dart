import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:real_time_ports/extensions/hover_extensions.dart';
import 'package:real_time_ports/models/skill_model.dart';
import 'package:real_time_ports/providers/skill_provider.dart';
import 'package:real_time_ports/themes/dark_theme.dart';
import 'package:real_time_ports/widgets/add_icon.dart';
import 'package:real_time_ports/widgets/edit_icon.dart';
import 'package:real_time_ports/widgets/highlighted_cards.dart';
import 'package:real_time_ports/widgets/save_button.dart';
import 'package:real_time_ports/widgets/skill_drop_down.dart';


class SkillWidget extends StatelessWidget {
  const SkillWidget({
    super.key,
    required this.sectionStyle,
  });

  final TextStyle sectionStyle;

  @override
  Widget build(BuildContext context) {

    List<String> skills=Provider.of<SkillProvider>(context,listen: true).skills;
    return Container(
     padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
     decoration: BoxDecoration(
            
               
               border: Border.all(color: primaryColor,width: 0.5)
               
             ),
     child: Column(
       mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.start,
    
       children: [
    
         Row(children: [Text("Skills",style: sectionStyle,),const SizedBox(width: 10,),GestureDetector(
          onTap: () => showMyDialog(context),
    
           child: const  AddIcon(),
         ).showCursorOnHover,
         const SizedBox(width: 10,),
         GestureDetector(child: const EditIcon(),)
         ]),
          const SizedBox(height: 10,),
         Text("Add your Technical Skills",style: TextStyle(color: textColor,fontSize: 14),),
         const SizedBox(height: 20,),
    
         Wrap(
          spacing: 10,
          runSpacing: 15,
          children:skills.map((skill)=>HighlightedCards( isMobile: false,child: Text(skill),)).toList()),
       
         
         
       ],
     ),
    );
  }
}

void showMyDialog(BuildContext context,) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Select your Skill',style: TextStyle(color: textColor),),
        content: Container(
        height: 450,
        padding: const EdgeInsets.all(25),
        
          child: Column(children: [
            Container(
              height: 30,
              width: 350,
              
              child: ListView.builder(
              
                shrinkWrap: true,
                 scrollDirection: Axis.horizontal,
                itemCount: Provider.of<SkillProvider>(context,listen:true).skills.length,

                itemBuilder: (context, index) {
                
                   return  Padding(
                    padding:const  EdgeInsets.symmetric(horizontal: 5),
                    child: MyButton(color: Colors.grey,text: Provider.of<SkillProvider>(context,listen:true).skills[index]));
              },)),
            const SkillDropDown()]),
        ),
        actions: <Widget>[
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            GestureDetector(
              onTap: () {
                
                Navigator.pop(context);
              },
              
              child:const  MyButton(color: Colors.grey, text: "discard", width: 100,height: 40,)).showCursorOnHover,
            GestureDetector(child: const  MyButton(color: Colors.green, text: "Save", width: 100,height: 40,)).showCursorOnHover
          ],
         )
        ],
      );
    },
  );
}