import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:real_time_ports/themes/dark_theme.dart';

import 'package:real_time_ports/widgets/customButton.dart';
import 'package:real_time_ports/widgets/customText_field.dart';

class MobileLogin extends StatefulWidget {
  const MobileLogin({super.key});

  @override
  State<MobileLogin> createState() => _MobileLoginState();
}

class _MobileLoginState extends State<MobileLogin> {
  final TextEditingController mailController=TextEditingController();
final TextEditingController passwordController=TextEditingController();
bool _showPassword=true;




  bool _isSignup=false;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    mailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: tertiaryColor,


      body:  Padding(
        
        padding: EdgeInsets.all(50),
        child: Center(
          child: ConstrainedBox(
            
            constraints: BoxConstraints(maxWidth: 400),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
               
                  const SizedBox(height: 100,),
                   Container(
                    width: 200,
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(horizontal: 5 ,vertical: 5),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: primaryColor),
                    child: Text("Live Ports",style: GoogleFonts.bebasNeue(color: tertiaryColor, fontSize: 50),textAlign: TextAlign.center,)),
                  Text(_isSignup?"Sign Up":"Login",style: const TextStyle(fontSize: 25,color: primaryColor),),
                  const Spacer(),
                  CustomtextField(hinttext: "Email",controller: mailController,),
                  const SizedBox(height: 20,),
                  CustomtextField(hinttext: "password",controller: passwordController,
                  obscureText: _showPassword,
                  suffix:  GestureDetector(
                    onTap: () {
                      _showPassword=!_showPassword;
                      setState(() {
                        
                      });
                    },
                    child: Icon(_showPassword?Icons.visibility_off_rounded:Icons.visibility))),
                  const SizedBox(height: 40,),
                  InkWell(
                    onTap: () {
                      
                      context.go('/myportfolio');
                    },
                    child: Custombutton(text:_isSignup? "Sign Up":"Login")),
                  const SizedBox(height: 20,),

                  const SizedBox(height: 25,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text(_isSignup?"Already have a account ":"Create a new account ",style: const TextStyle(color: textColor),),
                     GestureDetector (
                      onTap: () {
                        _isSignup=!_isSignup;
                        setState(() {
                          
                        });
                      },
                      child: Text(_isSignup?"Login":"Sign Up",style: const TextStyle(color: primaryColor,decoration: TextDecoration.underline,),))],)
                  
                  ]) ),
        )
      ),
    );
  }
}