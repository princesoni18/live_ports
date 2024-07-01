import 'package:flutter/material.dart';
import 'package:real_time_ports/themes/dark_theme.dart';

import 'package:real_time_ports/widgets/highlighted_cards.dart';

class ProjectCard extends StatelessWidget {
  final bool isMobile;
  const ProjectCard({super.key, required this.isMobile});

  @override
  Widget build(BuildContext context) {
    
    return   Container(
         
        width: isMobile?200:400,
        decoration:  BoxDecoration(
         
         gradient: const LinearGradient(colors: [secondaryColor, tertiaryColor],end: Alignment.bottomCenter, begin: Alignment.center),
        //color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
       // border: Border.all(color: primaryColor,width: 1)
       
      ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: isMobile?150:300,
              width: isMobile?200:400,
              padding: EdgeInsets.only(right: 5,top: 5),
              decoration: const BoxDecoration(
                  image: DecorationImage(image: NetworkImage("assets/timepass.jpg"),fit: BoxFit.cover),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
              ),
              alignment: Alignment.topRight,
              child:  GestureDetector(
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: secondaryColor.withOpacity(0.5)),
                  child: Icon(Icons.arrow_outward_rounded,color: primaryColor,size: 25,)))
            ),
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
            shrinkWrap: true,
            children: [

              Text("Viber",style: const TextStyle(color: primaryColor,fontSize: 30,fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
        
         ReadMoreText(
          isMobile: isMobile,
          text: "two models first of all one for users and one for administrator user will have homescreen ,login screen ,profile screen app drawer . administrator will have login screen ,home screen ,register a user screen , all data screen with sorting options. app drawer, can also post stuff user will have user id ,mobile no, name ,profile image ,package starting date ,package type,duration ,age ,weight height "),
        
           
          Wrap(
            spacing: 10,
            runSpacing: 10,
            runAlignment: WrapAlignment.start,

            children: [
        
              HighlightedCards(child: Text("Flutter",),isMobile: isMobile,),
              HighlightedCards(child: Text("Firebase"),isMobile: isMobile,),
              HighlightedCards(child: Text("Figma"),isMobile: isMobile,),
              HighlightedCards(child: Text("Figma"),isMobile: isMobile,),
              HighlightedCards(child: Text("Figma"),isMobile: isMobile,),
              HighlightedCards(child: Text("Figma"),isMobile: isMobile,),
            ],
          )

            ],
          )
          
        
        
          
        ],
      
    ));
  }
}
class ReadMoreText extends StatefulWidget {
  final String text;
  final int trimLength;
  final bool isMobile;
  
  const ReadMoreText({
    Key? key,
    required this.text,
    required this.isMobile,
    this.trimLength = 200, // Default length before "Read More"
  }) : super(key: key);

  @override
  _ReadMoreTextState createState() => _ReadMoreTextState();
}

class _ReadMoreTextState extends State<ReadMoreText> {
  bool isExpanded = false;
  
  @override
  Widget build(BuildContext context) {
    final displayText = isExpanded ? widget.text : widget.text.substring(0, widget.isMobile?120:widget.trimLength) + '...';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(displayText,style: TextStyle(color: textColor),),
       const  SizedBox(height: 5),
        GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Text(
            isExpanded ? 'Read Less' : 'Read More',
            style: const TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}