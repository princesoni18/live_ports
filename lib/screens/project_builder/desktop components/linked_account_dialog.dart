import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_time_ports/constants/accounts_iconList.dart';
import 'package:real_time_ports/extensions/hover_extensions.dart';

import 'package:real_time_ports/themes/dark_theme.dart';
import 'package:real_time_ports/widgets/save_button.dart';
void showLinkedAccountsDialog(BuildContext context, List<TextEditingController> controllers) {
  showDialog(
    context: context,
    builder: (BuildContext context) {

      
      return AlertDialog(
        title: const Text('Link Accounts',style: TextStyle(color: textColor),),
        content: Container(
        
        width: 500,
       
       
        
          child:  Container(
               width: 400,
              decoration: BoxDecoration(
            
                borderRadius: BorderRadius.circular(10),
            
                border: Border.all(color: Colors.grey,width: 0.5)
              ),
              padding:const  EdgeInsets.all(10),
            
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                 
                 return Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                   child: Row(
                   
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   
                    children: [
                      SvgPicture.asset(accountsIcons[index],width: 30,color: textColor,),
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 230,minWidth: 100),
                        child: Container(
                                             
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          
                           border: Border.all(color: textColor, width: 0.5)
                                           
                        ),
                        child: TextField(
                          style: const TextStyle(color: textColor),
                          controller: controllers[index],decoration: const InputDecoration(
                                             
                            border: InputBorder.none,
                            hintText: 'Enter username',
                            hintStyle: TextStyle(color: hintcolor)
                           
                          ),),
                        )),
                      

                      InkWell(
                        onTap: () {
                          controllers[index].clear();
                        },
                        child: Icon(Icons.delete_outline_rounded,color:textColor,))
                      
                      ],
                   ),
                 );
                
              },)
            ),
          ),
        
        actions: <Widget>[
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            GestureDetector(
              onTap: () {
                
                Navigator.pop(context);
              },
              
              child:const  MyButton(color: Colors.grey, text: "discard", width: 100,height: 40,)).showCursorOnHover,
            GestureDetector(child: const  MyButton(color: Colors.green, text: "Save", width: 100,height: 40,)).showCursorOnHover
          ],
         )
        ],
      );
    },
  );
}