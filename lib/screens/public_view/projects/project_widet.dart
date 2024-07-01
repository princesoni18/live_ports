import 'package:flutter/material.dart';
import 'package:real_time_ports/extensions/hover_extensions.dart';
import 'package:real_time_ports/screens/public_view/projects/project_card.dart';
import 'package:real_time_ports/widgets/constants.dart';

class ProjectSection extends StatelessWidget {
  final bool isMobile;
  const ProjectSection({super.key, this.isMobile=false});

  @override
  Widget build(BuildContext context) {
    return Column(

    crossAxisAlignment: CrossAxisAlignment.start,
      children: [


        const Text("Projects",style: headerStyle,),

        const SizedBox(height: 20,),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.start,
          runAlignment: WrapAlignment.center,
          alignment:  WrapAlignment.center,
         spacing: 20,
         runSpacing: 20,

           children: [ProjectCard(isMobile: isMobile,).moveUpOnHover,ProjectCard(isMobile: isMobile,).moveUpOnHover,ProjectCard(isMobile: isMobile,).moveUpOnHover] 
        )

      ],
    );
  }
}