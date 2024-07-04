import 'package:flutter/material.dart';
import 'package:real_time_ports/extensions/hover_extensions.dart';
import 'package:real_time_ports/screens/project_builder/commons/about_section_dialog.dart';
import 'package:real_time_ports/screens/project_builder/commons/project_widget.dart';
import 'package:real_time_ports/screens/project_builder/desktop%20components/account_links.dart';
import 'package:real_time_ports/screens/project_builder/desktop%20components/basic_details.dart';
import 'package:real_time_ports/screens/project_builder/commons/skill_widget.dart';
import 'package:real_time_ports/themes/dark_theme.dart';
import 'package:real_time_ports/widgets/add_icon.dart';
import 'package:real_time_ports/widgets/centered_view.dart';
import 'package:real_time_ports/widgets/customButton.dart';
import 'package:real_time_ports/widgets/edit_icon.dart';
import 'package:real_time_ports/widgets/highlighted_cards.dart';
import 'package:real_time_ports/widgets/save_button.dart';

class ProjectBuilderDesktop extends StatefulWidget {
  const ProjectBuilderDesktop({super.key});

  @override
  State<ProjectBuilderDesktop> createState() => _ProjectBuilderDesktopState();
}

class _ProjectBuilderDesktopState extends State<ProjectBuilderDesktop> {

  final TextEditingController aboutSectionCntrllr=TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    aboutSectionCntrllr.dispose();
  }
  @override
  Widget build(BuildContext context) {

    final sectionStyle=TextStyle(color: textColor, fontSize: 25);
    return Scaffold(
    backgroundColor: tertiaryColor,
        body: CenteredView(
          
          child: Container(
            padding: EdgeInsets.all(20),
           
          
               color: secondaryColor,
          
               child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: primaryColor,width: 0.3)
                ),
                 child: SingleChildScrollView(
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                   
                   
                    children: [
                    
                     BasicDetails(),
                   
                     Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [LinkedAccounts(sectionStyle: sectionStyle),
                   
                     Expanded(
                       child: Column(
                         children: [Container(
                          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                          decoration: BoxDecoration(
                                 
                                    
                                    border: Border.all(color: primaryColor,width: 0.5)
                                    
                                  ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                         
                            children: [
                         
                              Row(children: [Text("About section",style: sectionStyle,),const SizedBox(width: 5,),GestureDetector(
                   
                                onTap: () { showAboutSectionDialog( context,aboutSectionCntrllr);},
                         
                                child:const EditIcon(),
                              )]),
                              const SizedBox(height: 15,),
                         
                              //Text("Write a short description about yourself", style: TextStyle(color: textColor),),
                   
                              Text(" Highly skilled Flutter developer with strong Leadership quality and Adept at collaborating with cross-functional teams to drive project success. Seeking an opportunity to contribute my expertise in Flutter development to a dynamic and forward-thinking organization.",
                              textAlign: TextAlign.start,
                              style: TextStyle(color: textColor),
                              )
                              
                            ],
                          ),
                         ),
                   
                         SkillWidget(sectionStyle: sectionStyle),
                   
                         ProjectWidget(),
                         
                         ]
                       ),
                     )
                     ])
                   
                    
                   
                     
                    ],
                             
                   ),
                 ),
               ),
          
          ),
        ) 

        
        
    );
  }
}



