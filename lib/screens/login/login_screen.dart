import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:real_time_ports/screens/login/login_box.dart';
import 'package:real_time_ports/themes/dark_theme.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {



  bool _isSelected=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   backgroundColor: tertiaryColor,

      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children:[

          Expanded(
            child: Container(
                     color: primaryColor,
             child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Lottie.asset("assets/funny_robo.json", height: 140),
                Text("Live Ports",style: GoogleFonts.bebasNeue(
                fontSize: 40
              ),
            
            
              ),
              const Text("Create your portfolio under 5 minutes")
              ],
             ),
            
            ),
          ),
          
           Container(
            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 50),
            width: 500,
            height: 600,
          
          child: 

             Center(

               child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 400),
                 child:const  LoginBox()
                             
                             
                             
                             
                             
                            
               ),
             ),
          ),
        ]
      ),
    );
  }


 
 
}