import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:real_time_ports/extensions/hover_extensions.dart';
import 'package:real_time_ports/routes/app_routes_config.dart';
import 'package:real_time_ports/themes/dark_theme.dart';
import 'package:real_time_ports/utils/image_pick.dart';
import 'package:real_time_ports/widgets/edit_icon.dart';
import 'package:real_time_ports/widgets/save_button.dart';
class BasicDetails extends StatefulWidget {
  const BasicDetails({
    super.key,
  });

  @override
  State<BasicDetails> createState() => _BasicDetailsState();
}

class _BasicDetailsState extends State<BasicDetails> {

  Uint8List? _file;

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
           children:[  CircleAvatar(
             radius: 50,
           
             backgroundImage: _file!=null?MemoryImage(_file!):AssetImage("assets/profile.jpeg"),
             child: Align(
               alignment: Alignment.bottomRight,
               child: GestureDetector(
                onTap: () async{
                  _file =await pickImage(ImageSource.gallery);
                 
                  setState(() {
                    
                  });
                },
                child: const EditIcon()).showCursorOnHover),

             
           ),
           const SizedBox(width: 15,),
             const Text("Prince Soni",style: TextStyle(color: textColor, fontSize: 25),),
           
           ]
         ),
    
       
    
    
       Row(
        children: [GestureDetector(
        
          child: MyButton(color: Colors.amber,height: 40,width: 120,text: "See Public View",)).showCursorOnHover,
        const SizedBox(width: 15,),
        GestureDetector(child: MyButton(color: Colors.white,height: 40,width: 120,text: "Portfolio Settings",)).showCursorOnHover,

        ]),
       
    
         
         
        
    
    
       ],
     ),
                    
    );
  }
}