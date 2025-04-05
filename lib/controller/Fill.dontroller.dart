import 'dart:convert';

import 'package:const_application_1/modal/FIlee.modal.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
class Filldontroller extends ChangeNotifier {
  List <Eaxmple>? _ofset;
  List <Eaxmple>? get ofset=> _ofset;
 void getData()async{
  try {
    var value=await http.get(Uri.parse("https://mapi.trycatchtech.com/v3/android_tutorials/interview_questions_list"));
    if (value.statusCode==200) {}
      _ofset=Eaxmple.ofExample(jsonDecode(value.body));
      notifyListeners();
    
    
  } catch (e) {
    
  }
 }
}