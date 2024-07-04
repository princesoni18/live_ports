import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:real_time_ports/screens/login/login_builder.dart';


import 'package:real_time_ports/screens/project_builder/project_builder.dart';

import 'package:real_time_ports/screens/public_view/public_view_screen.dart';


class NyAppRouter {
  static GoRouter returnRouter(bool isAuth) {
    GoRouter router = GoRouter(
      routes: [
        GoRoute(
          name: 'home',
          path: '/',
          pageBuilder: (context, state) {
            return const MaterialPage(child: PublicView());
          },
        ),
        
        GoRoute(path: '/login',
        pageBuilder: (context, state) =>  MaterialPage(child: LoginBuilder()),
        
        ),
        GoRoute(
          name: 'myportfolio',
          path: '/myportfolio',
          pageBuilder: (context, state) {
            return MaterialPage(child: ProjectBuilder());
          },
        )
      ],
      errorPageBuilder: (context, state) {
        return MaterialPage(child: Center(child: Text("Error"),));
      },
      
    );
    return router;
  }
}