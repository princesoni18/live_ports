import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:real_time_ports/providers/skill_provider.dart';
import 'package:real_time_ports/routes/app_routes_config.dart';
import 'package:real_time_ports/themes/dark_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(
    providers: [

     ChangeNotifierProvider(create: (_)=>SkillProvider())
    ],
    
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Live_ports',
      themeMode: ThemeMode.dark,
      theme: dark_theme,
       routerConfig: NyAppRouter.returnRouter(true),
    
     
       
    );
  }
}
