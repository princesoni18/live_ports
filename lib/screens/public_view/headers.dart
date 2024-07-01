import 'package:flutter/material.dart';
import 'package:real_time_ports/screens/public_view/rating_card.dart';
import 'package:real_time_ports/themes/dark_theme.dart';
import 'package:real_time_ports/widgets/card_view.dart';

class Headers extends StatelessWidget {
  const Headers({super.key});

  @override
  Widget build(BuildContext context) {
    return CardView(child: Container(


      width: double.maxFinite,
     


      child: 
      
       Row(
        mainAxisAlignment: MainAxisAlignment.start,
     
        children: [
          
            
        nameComponent(context),
      
          
        const SizedBox(width: 15,),
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Row(
                       
                children: [
                   const RatingCard(name: "Leetcode",rating: "1600",link: 'assets/leetcode.svg',),
                   RatingCard(name: "codechef",rating: "1700",link: 'assets/codechef.svg',),
                   RatingCard(name: "Codeforces",rating: "1599",link: 'assets/codeforces.svg',),
               
               
                ],
               ),
            ),
          ),
        
        
          
          


          
        ],
      ),
    ));
  }

  Widget nameComponent(BuildContext context){
    final width=MediaQuery.of(context).size.width;
    return Container(
      width: width/2.5,

      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Row(

          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        
         const CircleAvatar(
                  radius: 100,
                  backgroundImage:AssetImage('assets/profile.jpeg'),
                  
                ),
                const SizedBox(width: 20,),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
                 children: [
                   const Text("Prince Soni",style: TextStyle(fontSize: 30,color: primaryColor,),),
                   const SizedBox(height: 10,),
                   Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(10),
                    color: Colors.amber
                  ),
                    child: Text("Software developer",style: TextStyle(fontSize: 20,color: tertiaryColor,fontWeight: FontWeight.bold),))

                 ],
               ),
          ],
        ),
      ),
    );
  }
}