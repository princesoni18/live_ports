import 'package:flutter/material.dart';
import 'package:real_time_ports/extensions/hover_extensions.dart';

import 'package:real_time_ports/themes/dark_theme.dart';
import 'package:real_time_ports/widgets/save_button.dart';
void showAboutSectionDialog(BuildContext context,TextEditingController controller) {
  showDialog(
    context: context,
    builder: (BuildContext context) {

      
      return AlertDialog(
        title: const Text('About section',style: TextStyle(color: textColor),),
        content: Container(
        height: 300,
        width: 500,
       
        padding: const EdgeInsets.all(10),
        
          child:  Container(
            
              decoration: BoxDecoration(
            
                borderRadius: BorderRadius.circular(10),
            
                border: Border.all(color: Colors.grey,width: 0.5)
              ),
              padding:const  EdgeInsets.all(10),
            
              child: TextField(controller: controller,
            
              minLines: 1,
              maxLines: 12,
              maxLength: 250,
              style: const TextStyle(color: textColor),
              decoration: const InputDecoration(
                
                border: InputBorder.none,
            
                hintText: "write a short description about yourself",
                
              ),
            
              
              ),
            ),
          ),
        
        actions: <Widget>[
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            GestureDetector(
              onTap: () {
                controller.clear();
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