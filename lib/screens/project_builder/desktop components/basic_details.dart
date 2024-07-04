import 'package:flutter/material.dart';
import 'package:real_time_ports/themes/dark_theme.dart';
import 'package:real_time_ports/widgets/edit_icon.dart';
import 'package:real_time_ports/widgets/save_button.dart';
class BasicDetails extends StatelessWidget {
  const BasicDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
    
     height: 200,
     padding: EdgeInsets.symmetric(horizontal: 20),
     decoration: BoxDecoration(
    
       borderRadius: const BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
       border: Border.all(color: primaryColor,width: 0.5)
     ),
    
    
     child:  Row(
       crossAxisAlignment: CrossAxisAlignment.center,
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Row(
           children:[ const CircleAvatar(
             radius: 50,
           
             backgroundImage: AssetImage("assets/profile.jpeg"),
             child: Align(
               alignment: Alignment.bottomRight,
               child: const EditIcon()),

             
           ),
           const SizedBox(width: 15,),
             const Text("Prince Soni",style: TextStyle(color: textColor, fontSize: 25),),
           
           ]
         ),
    
       
    
    
       Row(
        children: [GestureDetector(child: MyButton(color: Colors.amber,height: 40,width: 120,text: "See Public View",)),
        const SizedBox(width: 15,),
        GestureDetector(child: MyButton(color: Colors.white,height: 40,width: 120,text: "Portfolio Settings",)),

        ]),
       
    
         
         
        
    
    
       ],
     ),
                    
    );
  }
}