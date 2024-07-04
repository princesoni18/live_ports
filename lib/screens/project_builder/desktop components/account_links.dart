import 'package:flutter/material.dart';
import 'package:real_time_ports/screens/project_builder/desktop%20components/linked_account_dialog.dart';
import 'package:real_time_ports/themes/dark_theme.dart';
import 'package:real_time_ports/widgets/add_icon.dart';
class LinkedAccounts extends StatefulWidget {
  const LinkedAccounts({
    super.key,
    required this.sectionStyle,
  });

  final TextStyle sectionStyle;

  @override
  State<LinkedAccounts> createState() => _LinkedAccountsState();
}

class _LinkedAccountsState extends State<LinkedAccounts> {
  List<TextEditingController> controllers=[TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController()];
@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controllers.clear();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
 
    width: 300,
    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
         decoration: BoxDecoration(
        
           borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
           border: Border.all(color: primaryColor,width: 0.5)
           
         ),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           
            Row(children:[ Text("Link accounts",style:  widget.sectionStyle,),const SizedBox(width: 5,),GestureDetector(
              onTap: (){
             showLinkedAccountsDialog(context, controllers);

              },
              child:const  AddIcon(),)])
    
          ]
         
    
     ),
    );
  }
}