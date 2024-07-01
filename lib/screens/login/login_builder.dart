import 'package:flutter/material.dart';

import 'package:real_time_ports/screens/login/login_mobile.dart';
import 'package:real_time_ports/screens/login/login_screen.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginBuilder extends StatelessWidget {
  const LoginBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
     breakpoints: const ScreenBreakpoints(desktop: 1000, tablet: 700, watch: 300),
      mobile: (context)=>const MobileLogin(),

      desktop: (context)=>const LoginScreen(),
      tablet: (context)=>const LoginScreen(),
    );
  }
}