import 'package:flutter/material.dart';
import 'package:real_time_ports/models/skill_model.dart';


class SkillProvider extends ChangeNotifier{

  List<String> _skills=[ "Flutter", "Dart"];
 
 List<String> get skills=>_skills;

  void addSkill(String skill){
         

         if(_skills.contains(skill)){

          _skills.remove(skill);
         }
     else {  _skills.add(skill);}

       notifyListeners();

  }


}