import 'package:flutter/material.dart';
import 'package:real_time_ports/screens/public_view/public_view_desktop.dart';
import 'package:real_time_ports/screens/public_view/public_view_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PublicView extends StatelessWidget {
  const PublicView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(

      mobile: (context)=>const PublicViewMobile(),
      tablet: (context)=>const PublicViewDesktop(),
      desktop: (context)=>const PublicViewDesktop(),
    );
  }
}