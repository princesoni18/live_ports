import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:real_time_ports/screens/public_view/about_section.dart';
import 'package:real_time_ports/screens/public_view/headers.dart';
import 'package:real_time_ports/screens/public_view/desktop_urls.dart';
import 'package:real_time_ports/screens/public_view/projects/project_widet.dart';
import 'package:real_time_ports/screens/public_view/skills_grid_view.dart';
import 'package:real_time_ports/themes/dark_theme.dart';

import 'package:real_time_ports/widgets/centered_view.dart';
import 'package:real_time_ports/widgets/constants.dart';

class PublicViewDesktop extends StatelessWidget {
  const PublicViewDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tertiaryColor,
      body: CenteredView(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: bgcolor,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: primaryColor, width: 0.2),
          ),
          child: Column(
            children: [
              // Fixed widget at the top
              DesktopUrls(),
              const SizedBox(height: 20),

              // Scrollable content
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Headers(),
                    const SizedBox(height: 20),
                    AboutSection(),
                    const SizedBox(height: 50),
                    const Text("Skills", style: headerStyle),
                    SkillGridView(crossAxisSize: 150, mainAxisSize: 150),
                    const SizedBox(height: 20),
                    const ProjectSection(),
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
