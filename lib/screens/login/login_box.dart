import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:real_time_ports/themes/dark_theme.dart';
import 'package:real_time_ports/widgets/customButton.dart';
import 'package:real_time_ports/widgets/customText_field.dart';

class LoginBox extends StatefulWidget {
  const LoginBox({super.key});

  @override
  State<LoginBox> createState() => _LoginBoxState();
}

class _LoginBoxState extends State<LoginBox> {
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
    return Column(children: [
                  const SizedBox(height: 100,),
                  
                  Text(_isSignup?"Sign Up":"Login",style: TextStyle(fontSize: 25,color: primaryColor),),
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
                  
                  ]);
  }
}