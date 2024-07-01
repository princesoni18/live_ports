import 'package:flutter/material.dart';
import 'package:real_time_ports/screens/project_builder/project_builder_dekstop.dart';

import 'package:responsive_builder/responsive_builder.dart';

class ProjectBuilder extends StatelessWidget {
  const ProjectBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(

      mobile: (context)=>const ProjectBuilderDesktop(),
      tablet: (context)=>const ProjectBuilderDesktop(),
      desktop: (context)=>const ProjectBuilderDesktop(),
    );
  }
}