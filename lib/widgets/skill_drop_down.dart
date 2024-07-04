import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:real_time_ports/constants/skill_list.dart';
import 'package:real_time_ports/models/skill_model.dart';
import 'package:real_time_ports/providers/skill_provider.dart';
import 'package:real_time_ports/themes/dark_theme.dart';


class SkillDropDown extends StatefulWidget {

  const SkillDropDown({Key? key,}) : super(key: key);
  

  @override
  State<SkillDropDown> createState() => _SkillDropDownState();
}

class _SkillDropDownState extends State<SkillDropDown> {
  String _selectedTone = 'Flutter'; // Default tone
   List<String> filteredItems = techList;
          TextEditingController searchController = TextEditingController();
         
          @override
  void initState() {
    // TODO: implement initState
    super.initState();
   
  }
@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    searchController.dispose();
  }
          void filterSearchResults(String query) {
            List<String> dummySearchList = [];
            dummySearchList.addAll(techList);
            if (query.isNotEmpty) {
              List<String> dummyListData = [];
              dummySearchList.forEach((item) {
                if (item.toLowerCase().contains(query.toLowerCase())) {
                  dummyListData.add(item);
                }
              });
              setState(() {
                filteredItems = dummyListData;
              });
              return;
            } else {
              setState(() {
                filteredItems = techList;
              });
            }
          }
       


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 350,
      child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextField(
                    controller: searchController,
                    onChanged: filterSearchResults,
                    style: TextStyle(color: textColor),
                    decoration:const  InputDecoration(
                      labelText: "Search",
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                      
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                    
                      shrinkWrap: true,
                      itemCount: filteredItems.length,
                      itemBuilder: (context, index) {
                        List<String> selectedSkills=Provider.of<SkillProvider>(context,listen: true).skills;
                        return ListTile(

                          leading: selectedSkills.contains(filteredItems[index])?const Icon(Icons.check_box):const Icon(Icons.check_box_outline_blank),
                          onTap: () {
                            Provider.of<SkillProvider>(context,listen:false).addSkill( filteredItems[index]);
                            
                          },

                          
                          title: Text(filteredItems[index]),
                        );
                      },
                    ),
                  ),
                ],
              ),
    );
  }
}